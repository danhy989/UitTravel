/* A utility library built by Viet Anh */
/* For web development only */
/* Created on Apr 9 2019 */
/* Version 1.0.4 */

(function (global) {
    // all global object references
    let document = global.document;

    let valib = function (selector, ...positions) {
        return new valib.init(selector, ...positions);
    };

    // current version
    valib.version = '1.0.4';

    valib.init = function (selector = '', ...positions) {
        this.selector = selector;
        this.positions = positions;
        this.object = this.toObject();
    };

    valib.init.prototype = {
        // all methods here
        toObject: function () {
            let selector = this.selector,
                positions = this.positions,
                result,
                posLength;

            posLength = positions.length;

            // exclude selector being undefined or null or ""
            if (!selector) {
                return selector === '' ? null : selector;
            }

            // exclude selector not being a string
            if (typeof selector !== 'string') {
                throw new Error('Invalid DOM selector');
            }

            if (selector === 'document') {
                return document;
            }

            if (selector.startsWith("#")) {
                // element selector by id
                let id = getDOMName(selector);
                return document.getElementById(id);
            }

            if (selector.startsWith(".")) {
                // class selector
                let className = getDOMName(selector);
                result = document.getElementsByClassName(className);
            } else {
                // tag selector
                result = document.getElementsByTagName(selector);
            }

            if (result.length > 0 && posLength > 0) {
                if (posLength === 1) {
                    let position, index;
                    position = positions[0];
                    index = getIndexByPosition(result, position);
                    result = result[index];
                } else {
                    let temp = map(positions, position => {
                        let index = getIndexByPosition(result, position);
                        return result[index];
                    });

                    result = temp;
                }
            }

            return result;
        },

        at: function (position) {
            let elements, index;
            elements = this.object;
            index = getIndexByPosition(elements, position);
            return elements[index];
        },

        click: function (callback) {
            let elements = this.object;
            if (elements) {
                if (elements === document || elements instanceof HTMLElement) {
                    setClick(elements, callback);
                } else if (elements instanceof HTMLCollection && elements.length > 0) {
                    each(elements, element => setClick(element, callback));
                }
            }
            return this;
        },

        keypress: function (keyCode, callback, preventDefault = false) {
            let elements = this.object;
            if (elements) {
                if (elements === document || elements instanceof HTMLElement) {
                    setKeypress(elements, keyCode, callback, preventDefault);
                } else if (elements instanceof HTMLCollection && elements.length > 0) {
                    each(elements, element => setKeypress(element, keyCode, callback, preventDefault));
                }
            }
            return this;
        },

        html: function (html) {
            let elements = this.object;
            if (html && elements) {
                if (elements instanceof HTMLElement) {
                    elements.innerHTML = html;
                } else if (elements instanceof HTMLCollection && elements.length > 0) {
                    each(elements, element => element.innerHTML = html);
                }
                return this;
            }
            return elements instanceof HTMLElement ? elements.innerHTML : null;
        },

        text: function (text) {
            let elements = this.object;
            if (elements) {
                if (elements instanceof HTMLElement) {
                    elements.innerText = text;
                } else if (elements instanceof HTMLCollection && elements.length > 0) {
                    each(elements, element => element.innerText = text);
                }
                return this;
            }
            return elements instanceof HTMLElement ? elements.innerHTML : null;
        },

        class: function () {
            let elements = this.object;
            return elements instanceof HTMLElement ? elements.className : null;
        },

        insertLeadingHTML: function (html) {
            insertHTML(this.object, 'afterbegin', html);
            return this;
        },

        insertEndingHTML: function (html) {
            insertHTML(this.object, 'beforeend', html);
            return this;
        }
    };

    /* OBJECT METHODS */

    valib.isObject = function (obj) {
        var type = typeof obj;
        return type === 'function' || type === 'object' && !!obj;
    };

    valib.isEmptyObject = function (obj) {
        let name;

        for (name in obj) {
            return false;
        }

        return true;
    };

    valib.getAllKeys = function (obj) {
        if (!valib.isObject(obj)) return [];

        var keys = [];
        for (var key in obj) keys.push(key);

        return keys;
    };

    valib.extend = function (target, ...sources) {
        if (sources.length < 1 || target == null) return target;

        each(sources, source => {
            const keys = valib.getAllKeys(source);
            each(keys, key => {
                if (target[key] === void 0) target[key] = source[key];
            });
        });

        return target;
    };

    /* ARRAY METHODS */

    let map = valib.map = function (array, callback) {
        let newArray = [];

        for (let index = 0; index < array.length; index++) {
            const element = array[index];
            const newElement = callback(element, index, array);
            newArray.push(newElement);
        }

        return newArray;
    };

    let filter = valib.filter = function (array, predicate) {
        let newArray = [];

        for (let index = 0; index < array.length; index++) {
            const element = array[index];
            if (predicate(element)) {
                newArray.push(element);
            }
        }

        return newArray;
    };

    let each = valib.each = function (array, callback) {
        for (let index = 0; index < array.length; index++) {
            const element = array[index];
            callback(element, index, array);
        }
    };

    /* DOM MANIPULATION */

    let getIndexByPosition = function (array, position) {
        let length = array.length,
            type = typeof position;

        if (length > 0) {
            if (type === 'number') {
                return position;
            }

            if (type === 'string' && position) {
                let index = -1;

                if (position === 'first') {
                    index = 0;
                } else if (position === 'middle' || position === 'mid') {
                    let middle = Math.floor(length / 2);
                    index = length % 2 === 0 ? middle - 1 : middle;
                } else if (position === 'last') {
                    index = length - 1;
                }

                return index;
            }
        }

        return -1;
    };

    let getDOMName = function (selector) {
        if (selector.startsWith("#") || selector.startsWith(".")) {
            return selector.substring(1);
        }
        return selector;
    };

    let setClick = function (HTMLElement, callback) {
        HTMLElement.addEventListener('click', function (event) {
            callback(event);
        });
    };

    let setKeypress = function (HTMLElement, keyCode, callback, preventDefault) {
        HTMLElement.addEventListener('keypress', function (event) {
            let key;

            if (typeof keyCode === 'number') {
                key = event.which || event.keyCode;
            } else if (typeof keyCode === 'string') {
                key = event.key;
            }

            if (key === keyCode) {
                if (preventDefault) {
                    event.preventDefault();
                }
                callback(event);
            }
        });
    };

    // insert inner HTML
    let insertHTML = function (elements, insertPosition, html) {
        if (elements && html) {
            if (elements instanceof HTMLElement) {
                elements.insertAdjacentHTML(insertPosition, html);
            } else if (elements instanceof HTMLCollection && elements.length > 0) {
                each(elements, element => element.insertAdjacentHTML(insertPosition, html));
            }
        }
    };

    // NOT applicable
    let addClassName = function (target, ...classNames) {
        let withoutLeadingDot = map(classNames, className => className.replace(".", "").trim());
        if (!target) {
            each(withoutLeadingDot, (className, index) => {
                if (index === 0) {
                    target = className;
                } else {
                    target += ' ' + className;
                }
            });
        } else {
            each(withoutLeadingDot, className => target += ' ' + className);
        }
        return target;
    };

    valib.ready = function (callback) {
        document.addEventListener('DOMContentLoaded', callback);
    };

    /* AJAX */

    valib.ajaxGET = function (url, onReceive) {
        if (url) {
            let request = new XMLHttpRequest();

            request.open('GET', url, true);
            request.send();

            request.onload = function () {
                let jsonText = this.responseText;
                let obj = jsonText ? JSON.parse(jsonText) : {};

                onReceive(obj);
            };
        }
    };

    /* The 'ajaxPOST' method requires a set of specifications to send a POST HTTP request to a server.
    Put all specifications into one object (called 'specs') and pass it as the only parameter to the method.
    The 'specs' object should look like this:
    {
        url: '/url where you want to submit your data',
        requestHeader: {
            name: 'request name',
            value: 'request value'
        },
        data: 'data you want to submit to server',
        onStateChange: function (responseText) {
            // what to do when the request is successful
        }
    }
    */
    valib.ajaxPOST = function (specs) {
        let url, requestHeader, data, onStateChange, request;

        url = specs.url;
        requestHeader = specs.requestHeader;
        data = specs.data;
        onStateChange = specs.onStateChange;
        request = new XMLHttpRequest();

        request.open('POST', url, true);
        request.setRequestHeader(requestHeader.name, requestHeader.value);

        request.onreadystatechange = function () {
            if (request.readyState == 4 && request.status == 200) {
                onStateChange(request.responseText);
            } else {
                throw new Error('Unsuccessful POST HTTP request');
            }
        };

        request.send(data);
    };

    valib.getValuesFromUrl = function (...keys) {
        let queryString = global.location.search;

        if (queryString && keys.length > 0) {
            let searchParams = new URLSearchParams(queryString);
            
            return keys.length === 1 ? searchParams.get(keys[0]) : map(keys, key => searchParams.get(key));
        }

        return null;
    };


    // expose 'valib' to global context as two aliases
    global.valib = global._va = valib;

})(window);