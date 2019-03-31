/************************************************/
/* Get data for search result page from back-end APIs */
/************************************************/

document.addEventListener('DOMContentLoaded', function () {
    // manipulate DOM elements after page has loaded completely

    // create and send an HTTP request
    var request = new XMLHttpRequest();
    request.open('GET', 'json/search_results.json', true);
    request.send();
    request.onload = function () {
        var jsonObject = JSON.parse(this.responseText);
        console.log(jsonObject);

        var containerInnerHTML = '';
        jsonObject.forEach(tour => {
            const html = `
            <div class="item clearfix">
                <div class="item_image"><img src="${tour.image}" alt=""></div>
                <div class="item_content">
                    <div class="item_title">${tour.title}</div>
                    <div class="item_price">${tour.price.toLocaleString()} đ</div>
                    <ul>
                        <li>1 người</li>
                        <li>4 đêm</li>
                        <li>Khách sạn 3 sao</li>
                    </ul>
                    <div class="rating rating_5" data-rating="5">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="item_text">${tour.detail}</div>
                    <div class="item_more_link"><a href="#">Xem thêm</a></div>
                </div>
            </div>
            `;
            containerInnerHTML += html;
        });
        document.getElementsByClassName('items')[0].innerHTML = containerInnerHTML;
    };
});