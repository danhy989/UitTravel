_va.ready(function () {
    let params, province, url;
    
    params = _va.getValuesFromUrl('id', 'provname');
    url = '/rest/tour/province/' + params[0];
    province = params[1];

    _va('#section_title-with-q').text('Tour ' + province);
    
    _va.ajaxGET(url, function(obj) {
        obj.forEach(tour => {
            const html = `
            <div class="item clearfix">
                <div class="item_image"><img src="${tour.image}" alt=""></div>
                <div class="item_content">
                    <div class="item_title">${tour.name}</div>
                    <div class="rating rating_5" data-rating="5">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <div class="item_more_link"><a href="tour-info?id=${tour.id}">Xem thêm</a></div>
                </div>
            </div>
            `;
            
            _va('.items').insertEndingHTML(html);
        });
    });
});
