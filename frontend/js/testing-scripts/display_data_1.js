$(document).ready(function () {
    $.getJSON('json/sample_data.json', function (result) {
        // do something with the result data
        for (let i = 0; i < result.length; i++) {
            // make HTML text for DOM update
            let innerHtml = `
            <a href="#">
                <div class="top_item_image"><img src="${result[i].top_item_image}" alt=""></div>
                <div class="top_item_content">
                    <div class="top_item_price">&nbsp;</div>
                    <div class="top_item_text">${result[i].top_item_text}</div>
                </div>
            </a>
            `;

            // update the DOM with the prepared HTLM text
            $('.top_item').eq(i).html(innerHtml);
        }
    });
});