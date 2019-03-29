/****************************
 * Request data for 'Destinations by Region', 'Popular Tours' sections from an API
 * and then display it on UI
 * 
 *****************************/

document.addEventListener('DOMContentLoaded', function () {
    // only manipulate DOM after page is completely loaded

    var reqNorthernTours, reqCentralTours, reqSouthernTours, reqPopularTours;

    // Get tours from the North
    reqNorthernTours = new XMLHttpRequest();
    reqNorthernTours.open('GET', 'http://localhost:8080/rest/tour/area/1', true);
    reqNorthernTours.send();
    reqNorthernTours.onload = function () {
        const jsonObj = JSON.parse(reqNorthernTours.responseText);
        console.log(jsonObj);
        for (let i = 0; i < jsonObj.length; i++) {
            const tour = jsonObj[i][0];
            const tourPrice = jsonObj[i][1];
            const html = `
            <a href="#">
                <div class="top_item_image"><img src="${tour.image}" alt=""></div>
                <div class="top_item_content">
                    <div class="top_item_price">${tourPrice.toLocaleString()} đ</div>
                    <div class="top_item_title">${tour.name}</div>
                </div>
            </a>
            `;
            // update the DOM with the prepared HTLM text
            document.getElementsByClassName('top_item')[i].innerHTML = html;
        }
    };

    // Get tours from the Central
    reqCentralTours = new XMLHttpRequest();
    reqCentralTours.open('GET', 'http://localhost:8080/rest/tour/area/2', true);
    reqCentralTours.send();
    reqCentralTours.onload = function () {
        const jsonObj = JSON.parse(reqCentralTours.responseText);
        console.log(jsonObj);
        for (let i = 0; i < jsonObj.length; i++) {
            const tour = jsonObj[i][0];
            const tourPrice = jsonObj[i][1];
            const html = `
            <a href="#">
                <div class="top_item_image"><img src="${tour.image}" alt=""></div>
                <div class="top_item_content">
                    <div class="top_item_price">${tourPrice.toLocaleString()} đ</div>
                    <div class="top_item_title">${tour.name}</div>
                </div>
            </a>
            `;
            // update the DOM with the prepared HTLM text
            document.getElementsByClassName('top_item')[i + 3].innerHTML = html;
        }
    };

    // Get tours from the Central
    reqSouthernTours = new XMLHttpRequest();
    reqSouthernTours.open('GET', 'http://localhost:8080/rest/tour/area/3', true);
    reqSouthernTours.send();
    reqSouthernTours.onload = function () {
        const jsonObj = JSON.parse(reqSouthernTours.responseText);
        console.log(jsonObj);
        for (let i = 0; i < jsonObj.length; i++) {
            const tour = jsonObj[i][0];
            const tourPrice = jsonObj[i][1];
            const html = `
            <a href="#">
                <div class="top_item_image"><img src="${tour.image}" alt=""></div>
                <div class="top_item_content">
                    <div class="top_item_price">${tourPrice.toLocaleString()} đ</div>
                    <div class="top_item_title">${tour.name}</div>
                </div>
            </a>
            `;
            // update the DOM with the prepared HTLM text
            document.getElementsByClassName('top_item')[i + 6].innerHTML = html;
        }
    };

    reqPopularTours = new XMLHttpRequest();
    reqPopularTours.open('GET', 'http://localhost:8080/rest/tour/topOrder', true);
    reqPopularTours.send();
    reqPopularTours.onload = function () {
        const jsonObj = JSON.parse(reqPopularTours.responseText);
        for (let i = 0; i < jsonObj.length; i++) {
            const tour = jsonObj[i][0];
            const tourPrice = jsonObj[i][1];
            const html = `
            <a href="#">
                <div class="popular_item_image"><img src="${tour.image}" alt=""></div>
                <div class="popular_item_content">
                    <div class="popular_item_price">${tourPrice.toLocaleString()} đ</div>
                    <div class="popular_item_title">${tour.name}</div>
                </div>
            </a>
            `;
            // update the DOM with the prepared HTLM text
            document.getElementsByClassName('popular_item')[i].innerHTML = html;
        }
    };
});