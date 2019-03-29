/****************************
 * Request data for 'Destinations by Region', 'Popular Tours' sections from an API
 * and then display it on UI
 * 
 *****************************/

document.addEventListener('DOMContentLoaded', function () {
    // only manipulate DOM after page is completely loaded

    document.getElementsByClassName('top')[0].onclick = function () {
        var request = new XMLHttpRequest();
        request.open('GET', 'json/sample_data_all_regions.json', true);
        request.send();
        request.onload = function () {
            const jsonData = JSON.parse(request.responseText);
            var keys = Object.keys(jsonData);
            
            keys.forEach(function (key) {
                switch (key) {
                    case 'north':
                        displayData(jsonData.north, 0);
                        break;
                    case 'central':
                        displayData(jsonData.central, 3);
                        break;
                    case 'south':
                        displayData(jsonData.south, 6);
                        break;
                }
            });
        };
    }

    function displayData(items, beginDomIndex) {
        for (let i = 0; i < items.length; i++) {
            // make HTML text for DOM update
            const html = `
            <a href="#">
                <div class="top_item_image"><img src="${items[i].top_item_image}" alt="Error loading image. Check your connection."></div>
                <div class="top_item_content">
                    <div class="top_item_price">&nbsp;</div>
                    <div class="top_item_text">${items[i].top_item_text}</div>
                </div>
            </a>
            `;
            // update the DOM with the prepared HTLM text
            document.getElementsByClassName('top_item')[i + beginDomIndex].innerHTML = html;
        }
    }
});