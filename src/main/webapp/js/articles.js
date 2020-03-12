function article1face() {

    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/eng.1/news?lang=en&region=gb&calendartype=whitelist&limit=100&dates=20180407&league=eng.1";

    $.get(url, function (data) {

        $("#contenant1").html(data["articles"]["0"]["headline"]);
        $("#contenant2").html("<img src=" + data["articles"]["0"]["images"]["0"]["url"] + ">");
        $("#contenant3").html('<a href ="Article1">' + data["articles"]["0"]["description"] + '</a>');

        if (data["articles"]["0"]["images"].length > 1) {
            $("#contenant4").html("<img src=" + data["articles"]["0"]["images"]["1"]["url"] + " >");
        }
        else { $("#contenant4").html("<img src=" + data["articles"]["0"]["images"]["0"]["url"] + ">"); }
    })

}
article1face();

function article1() {

    var url = "http://now.core.api.espn.com/v1/sports/news/4070866?region=GB";

    $.get(url, function (data) {

        $("#contenant5").html(data["headlines"]["0"]["story"]);
        $("#contenant6").html(data["headlines"]["0"]["byline"]);
        $("#contenant7").html(data["headlines"]["0"]["published"]);
    })

}
article1();

// Deuxième article

function article2face() {

    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/eng.1/news?lang=en&region=gb&calendartype=whitelist&limit=100&dates=20180407&league=eng.1";

    $.get(url, function (data) {

        $("#contenant8").html(data["articles"]["15"]["headline"]);
        $("#contenant9").html("<img src=" + data["articles"]["15"]["images"]["0"]["url"] + ">");
        $("#contenant10").html('<a href ="Article2">' + data["articles"]["15"]["description"] + '</a>');

        if (data["articles"]["15"]["images"].length > 1) {
            $("#contenant11").html("<img src=" + data["articles"]["15"]["images"]["1"]["url"] + " >");
        }
        else { $("#contenant11").html("<img src=" + data["articles"]["15"]["images"]["0"]["url"] + ">"); }
    })

}
article2face();

function article2() {

    var url = "http://now.core.api.espn.com/v1/sports/news/4071255?region=GB";

    $.get(url, function (data) {

        $("#contenant12").html(data["headlines"]["0"]["story"]);
        $("#contenant13").html(data["headlines"]["0"]["byline"]);
        $("#contenant14").html(data["headlines"]["0"]["published"]);
    })

}
article2();

// troisième article

function article3face() {

    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/eng.1/news?lang=en&region=gb&calendartype=whitelist&limit=100&dates=20180407&league=eng.1";

    $.get(url, function (data) {

        $("#contenant15").html(data["articles"]["4"]["headline"]);
        $("#contenant16").html("<img src=" + data["articles"]["4"]["images"]["0"]["url"] + ">");
        $("#contenant17").html('<a href ="Article3">' + data["articles"]["4"]["description"] + '</a>');
        if (data["articles"]["0"]["images"].length > 2) {
            $("#contenant18").html("<img src=" + data["articles"]["4"]["images"]["1"]["url"] + ">");
        }
        else { $("#contenant18").html("<img src=" + data["articles"]["4"]["images"]["0"]["url"] + ">"); }
    })

}
article3face();

function article3() {

    var url = "http://now.core.api.espn.com/v1/sports/news/4071150?region=GB";

    $.get(url, function (data) {

        $("#contenant19").html(data["headlines"]["0"]["story"]);
        $("#contenant20").html(data["headlines"]["0"]["byline"]);
        $("#contenant21").html(data["headlines"]["0"]["published"]);
    })

}
article3();

// quatrième article

function article4face() {

    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/eng.1/news?lang=en&region=gb&calendartype=whitelist&limit=100&dates=20180407&league=eng.1";

    $.get(url, function (data) {

        $("#contenant22").html(data["articles"]["5"]["headline"]);
        $("#contenant23").html("<img src=" + data["articles"]["5"]["images"]["0"]["url"] + ">");
        $("#contenant24").html('<a href ="Article4">' + data["articles"]["5"]["description"] + '</a>');
        if (data["articles"]["5"]["images"].length > 1) {
            $("#contenant25").html("<img src=" + data["articles"]["5"]["images"]["1"]["url"] + ">");
        }
        else { $("#contenant25").html("<img src=" + data["articles"]["5"]["images"]["0"]["url"] + ">"); }
    })

}
article4face();

function article4() {

    var url = "http://now.core.api.espn.com/v1/sports/news/4071980?region=GB";

    $.get(url, function (data) {

        $("#contenant26").html(data["headlines"]["0"]["story"]);
        $("#contenant27").html(data["headlines"]["0"]["byline"]);
        $("#contenant28").html(data["headlines"]["0"]["published"]);
    })

}
article4();

// cinquième article

function article5face() {

    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/eng.1/news?lang=en&region=gb&calendartype=whitelist&limit=100&dates=20180407&league=eng.1";

    $.get(url, function (data) {

        $("#contenant29").html(data["articles"]["6"]["headline"]);
        $("#contenant30").html("<img src=" + data["articles"]["6"]["images"]["0"]["url"] + ">");
        $("#contenant31").html('<a href ="Article5">' + data["articles"]["6"]["description"] + '</a>');
        if (data["articles"]["6"]["images"].length > 1) {
            $("#contenant32").html("<img src=" + data["articles"]["6"]["images"]["1"]["url"] + ">");
        }
        else { $("#contenant32").html("<img src=" + data["articles"]["6"]["images"]["0"]["url"] + ">"); }
    })

}
article5face();

function article5() {

    var url = "http://now.core.api.espn.com/v1/sports/news/4071688?region=GB";

    $.get(url, function (data) {

        $("#contenant33").html(data["headlines"]["0"]["story"]);
        $("#contenant34").html(data["headlines"]["0"]["byline"]);
        $("#contenant35").html(data["headlines"]["0"]["published"]);
    })

}
article5();

// sixième article

function article6face() {

    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/eng.1/news?lang=en&region=gb&calendartype=whitelist&limit=100&dates=20180407&league=eng.1";

    $.get(url, function (data) {

        $("#contenant36").html(data["articles"]["10"]["headline"]);
        $("#contenant37").html("<img src=" + data["articles"]["10"]["images"]["0"]["url"] + ">");
        $("#contenant38").html('<a href ="Article6">' + data["articles"]["10"]["description"] + '</a>');
        if (data["articles"]["10"]["images"].length > 1) {
            $("#contenant39").html("<img src=" + data["articles"]["10"]["images"]["1"]["url"] + ">");
        }
        else { $("#contenant39").html("<img src=" + data["articles"]["10"]["images"]["0"]["url"] + ">"); }
    })

}
article6face();

function article6() {

    var url = "http://now.core.api.espn.com/v1/sports/news/4071688?region=GB";

    $.get(url, function (data) {

        $("#contenant40").html(data["headlines"]["0"]["story"]);
        $("#contenant41").html(data["headlines"]["0"]["byline"]);
        $("#contenant42").html(data["headlines"]["0"]["published"]);
    })

}
article6();

//septième article

function article7face() {

    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/eng.1/news?lang=en&region=gb&calendartype=whitelist&limit=100&dates=20180407&league=fra.1";

    $.get(url, function (data) {

        $("#contenant43").html(data["articles"]["1"]["headline"]);
        $("#contenant44").html("<img src=" + data["articles"]["1"]["images"]["0"]["url"] + ">");
        $("#contenant45").html('<a href ="Article7">' + data["articles"]["1"]["description"] + '</a>');
        if (data["articles"]["1"]["images"].length > 1) {
            $("#contenant46").html("<img src=" + data["articles"]["1"]["images"]["1"]["url"] + ">");
        }
        else { $("#contenant46").html("<img src=" + data["articles"]["1"]["images"]["0"]["url"] + ">"); }
    })

}
article7face();

function article7() {

    var url = "http://now.core.api.espn.com/v1/sports/news/4060860?region=GB";

    $.get(url, function (data) {

        $("#contenant47").html(data["headlines"]["0"]["story"]);
        $("#contenant48").html(data["headlines"]["0"]["byline"]);
        $("#contenant49").html(data["headlines"]["0"]["published"]);
    })

}
article7();

//huitième article

function article8face() {

    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/eng.1/news?lang=en&region=gb&calendartype=whitelist&limit=100&dates=20180407&league=fra.1";

    $.get(url, function (data) {

        $("#contenant50").html(data["articles"]["4"]["headline"]);
        $("#contenant51").html("<img src=" + data["articles"]["4"]["images"]["0"]["url"] + ">");
        $("#contenant52").html('<a href ="Article8">' + data["articles"]["4"]["description"] + '</a>');
        if (data["articles"]["4"]["images"].length > 1) {
            $("#contenant53").html("<img src=" + data["articles"]["4"]["images"]["1"]["url"] + ">");
        }
        else { $("#contenant53").html("<img src=" + data["articles"]["4"]["images"]["0"]["url"] + ">"); }
    })

}
article8face();

function article8() {

    var url = "http://now.core.api.espn.com/v1/sports/news/4068331?region=GB";

    $.get(url, function (data) {

        $("#contenant54").html(data["headlines"]["0"]["story"]);
        $("#contenant55").html(data["headlines"]["0"]["byline"]);
        $("#contenant56").html(data["headlines"]["0"]["published"]);
    })

}
article8();

//neuvième article

function article9face() {

    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/eng.1/news?lang=en&region=gb&calendartype=whitelist&limit=100&dates=20180407&league=fra.1";

    $.get(url, function (data) {

        $("#contenant57").html(data["articles"]["12"]["headline"]);
        $("#contenant58").html("<img src=" + data["articles"]["12"]["images"]["0"]["url"] + ">");
        $("#contenant59").html('<a href ="Article9">' + data["articles"]["12"]["description"] + '</a>');
        if (data["articles"]["10"]["images"].length > 1) {
            $("#contenant60").html("<img src=" + data["articles"]["12"]["images"]["1"]["url"] + ">");
        }
        else { $("#contenant60").html("<img src=" + data["articles"]["12"]["images"]["0"]["url"] + ">"); }
    })

}
article9face();

function article9() {

    var url = "http://now.core.api.espn.com/v1/sports/news/4063463?region=GB";

    $.get(url, function (data) {

        $("#contenant61").html(data["headlines"]["0"]["story"]);
        $("#contenant62").html(data["headlines"]["0"]["byline"]);
        $("#contenant63").html(data["headlines"]["0"]["published"]);
    })

}
article9();


//dixième article

function article10face() {

    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/eng.1/news?lang=en&region=gb&calendartype=whitelist&limit=100&dates=20180407&league=uefa.champions";

    $.get(url, function (data) {

        $("#contenant64").html(data["articles"]["3"]["headline"]);
        $("#contenant65").html("<img src=" + data["articles"]["3"]["images"]["0"]["url"] + ">");
        $("#contenant66").html('<a href ="Article10">' + data["articles"]["3"]["description"] + '</a>');
        if (data["articles"]["3"]["images"].length > 1) {
            $("#contenant67").html("<img src=" + data["articles"]["3"]["images"]["1"]["url"] + ">");
        }
        else { $("#contenant67").html("<img src=" + data["articles"]["3"]["images"]["0"]["url"] + ">"); }
    })

}
article10face();

function article10() {

    var url = "http://now.core.api.espn.com/v1/sports/news/4072806?region=GB";

    $.get(url, function (data) {

        $("#contenant68").html(data["headlines"]["0"]["story"]);
        $("#contenant69").html(data["headlines"]["0"]["byline"]);
        $("#contenant70").html(data["headlines"]["0"]["published"]);
    })

}
article10();

//onzième article

function article11face() {

    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/eng.1/news?lang=en&region=gb&calendartype=whitelist&limit=100&dates=20180407&league=uefa.champions";

    $.get(url, function (data) {

        $("#contenant71").html(data["articles"]["4"]["headline"]);
        $("#contenant72").html("<img src=" + data["articles"]["4"]["images"]["0"]["url"] + ">");
        $("#contenant73").html('<a href ="Article11">' + data["articles"]["4"]["description"] + '</a>');
        if (data["articles"]["4"]["images"].length > 1) {
            $("#contenant74").html("<img src=" + data["articles"]["4"]["images"]["1"]["url"] + ">");
        }
        else { $("#contenant74").html("<img src=" + data["articles"]["4"]["images"]["0"]["url"] + ">"); }
    })

}
article11face();

function article11() {

    var url = "http://now.core.api.espn.com/v1/sports/news/4072691?region=GB";

    $.get(url, function (data) {

        $("#contenant75").html(data["headlines"]["0"]["story"]);
        $("#contenant76").html(data["headlines"]["0"]["byline"]);
        $("#contenant77").html(data["headlines"]["0"]["published"]);
    })

}
article11();

//douzième article

function article12face() {

    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/eng.1/news?lang=en&region=gb&calendartype=whitelist&limit=100&dates=20180407&league=uefa.champions";

    $.get(url, function (data) {

        $("#contenant78").html(data["articles"]["10"]["headline"]);
        $("#contenant79").html("<img src=" + data["articles"]["10"]["images"]["0"]["url"] + ">");
        $("#contenant80").html('<a href ="Article12">' + data["articles"]["10"]["description"] + '</a>');
        if (data["articles"]["10"]["images"].length > 1) {
            $("#contenant81").html("<img src=" + data["articles"]["10"]["images"]["1"]["url"] + ">");
        }
        else { $("#contenant81").html("<img src=" + data["articles"]["10"]["images"]["0"]["url"] + ">"); }
    })

}
article12face();

function article12() {

    var url = "http://now.core.api.espn.com/v1/sports/news/4072093?region=GB";

    $.get(url, function (data) {

        $("#contenant82").html(data["headlines"]["0"]["story"]);
        $("#contenant83").html(data["headlines"]["0"]["byline"]);
        $("#contenant84").html(data["headlines"]["0"]["published"]);
    })

}
article12();

