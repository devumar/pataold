$(document).ready(function(){

    var fakedata = ['test1','test2','test3','test4','ietsanders'];
    $("#search-tenants").autocomplete({
        //source:fakedata
        source: function(request, response) {
            var term = request.term;
            // get json
            $.getJSON('/tenants/search?query='+term)
                .then(function success(data) {
                    // filter results
                    var res = $.grep(data.houses, function (val) {
                            return new RegExp($.ui.autocomplete.escapeRegex(term), "gi")
                                .test(val.toLowerCase())
                        })
                        , key = $.inArray(term.toUpperCase(), res)
                        , results = term.length === 1
                        & key !== -1
                            ? Array(res[key])
                            : res;
                    response(results)
                }, function error(jqxhr, textStatus, errorThrown) {
                    console.log(textStatus, errorThrown) // log `$.ajax` errors
                })
        }
    });

    $("#search_house").on("click", function(){
        $.ajax({
            method: "GET",
            dataType: "script",
            url: "/tenants/search_house",
            data: { query:  $('#search-tenants').val()},
            success: function(data){}
        })
    });
});