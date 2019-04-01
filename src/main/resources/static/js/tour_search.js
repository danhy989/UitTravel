/************************************************/
/* Navigate to the search results page when user performs a search for tours */
/************************************************/

document.addEventListener('DOMContentLoaded', function () {
    var searchInput = document.getElementsByClassName('search_input')[0];
    var searchButton = document.getElementsByClassName('search_button')[0];
    var menuSearchInput = document.getElementsByClassName('menu_search_input')[0];
    var menuSearchButton = document.getElementById('menu_search_submit');

    searchInput.addEventListener('keypress', function (e) {
        if (e.which == 13) { // Enter press
            e.preventDefault();
            searchFromNavBar();
        }
    });
    searchButton.onclick = searchFromNavBar;
    menuSearchInput.addEventListener('keypress', function (e) {
        if (e.which == 13) { // Enter press
            e.preventDefault();
            searchFromMenu();
        }
    });
    menuSearchButton.onclick = searchFromMenu;

    function searchFromNavBar() {
        var keyword = searchInput.value.trim();
        getSearchResults(keyword);
    };

    function searchFromMenu() {
        var keyword = menuSearchInput.value.trim();
        getSearchResults(keyword);
    };

    function getSearchResults(keyword) {
        if (isValid(keyword)) {
            var queryString = "?q=" + encodeURI(keyword);
            var url = "search" + queryString;
            window.location.href = url;
        } else {
            alert('Vui lòng nhập từ khóa hợp lệ!');
        }
    }

    function isValid(keyword) {
        if (keyword.replace(/\s/g, "") === "") return false;

        if (keyword.includes("?") ||
            keyword.includes("=") ||
            keyword.includes("!") ||
            keyword.includes("@") ||
            keyword.includes("#") ||
            keyword.includes("+") ||
            keyword.includes("&") ||
            keyword.includes("/") ||
            keyword.includes("%"))
            return false;

        return true;
    }
});