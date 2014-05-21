//on document ready, as soon as it begins to load
$(function() {
    // Lungo.init();
    $(window).on("load", app.initialize);

    //CAUSEROL
    // Using default configuration
    $("#nav-menu").carouFredSel({
        width: '100%',
        responsive: true,
        scroll: 1,
        circular: true, //keep it rotating
        infinite: false,
        items: {
            visible: {
                min: 1,
                max: 5
            }
        },
        prev: '#nav-menu-prev',
        next: '#nav-menu-next',
        auto: {
            play: false
            //- pauseOnHover: 'resume'
        }
        //- pagination  : "#foo2_pag"
    });

    setInterval(function() {
        $('.moment-in-time').html(function() {
            return moment().format('h:mm:ss a');
        })
    }, 1000);

    // $('body').flowtype({
    //     minimum: 400,
    //     maximum: 1900,
    //     minFont: 2,
    //     maxFont: 60,
    //     fontRatio: 90
    // });

    // Google Analytics: change UA-XXXXX-X to be your site's ID. 
    //- (function(b, o, i, l, e, r) {
    //-     b.GoogleAnalyticsObject = l;
    //-     b[l] || (b[l] =
    //-     function() {
    //-     (b[l].q = b[l].q || []).push(arguments)
    //-     });
    //-     b[l].l = +new Date;
    //-     e = o.createElement(i);
    //-     r = o.getElementsByTagName(i)[0];
    //-     e.src = '//www.google-analytics.com/analytics.js';
    //-     r.parentNode.insertBefore(e, r)
    //- }(window, document, 'script', 'ga'));
    //- ga('create', 'UA-XXXXX-X');
    //- ga('send', 'pageview');

});

