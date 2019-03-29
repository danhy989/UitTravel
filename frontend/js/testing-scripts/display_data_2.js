document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('js--top-dest').onclick = () => {
        var request = new XMLHttpRequest();
        request.open('GET', 'json/sample_data.json', true);
        request.send();
        request.onload = () => {
            const jsonData = JSON.parse(request.responseText);

            for (let i = 0; i < jsonData.length; i++) {
                // make HTML text for DOM update
                let html = `
                <a href="#">
                    <div class="top_item_image"><img src="${jsonData[i].top_item_image}" alt=""></div>
                    <div class="top_item_content">
                        <div class="top_item_price">&nbsp;</div>
                        <div class="top_item_text">${jsonData[i].top_item_text}</div>
                    </div>
                </a>
                `;
                // update the DOM with the prepared HTLM text
                document.getElementsByClassName('top_item')[i].innerHTML = html;
            }
        };
    }
});