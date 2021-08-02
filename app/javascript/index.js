document.addEventListener("turbolinks:load", function() {
    console.log("test");

    $('#logo').hover(
        function() {
            $('#logo-menu:not(:animated)').slideDown(200);
        },
        function() {
            $('#logo-menu:not(:animated)').slideUp(100);
        }
    );

    $('.donate').hover(
        function() {
            $('.donate-menu:not(:animated)').slideDown(200);
        },
        function() {
            $('.donate-menu:not(:animated)').slideUp(100);
        }
    );

    $('#post-new-modal').click(function() {
        $('#post-input-modal').fadeIn();
        $('#post-new-modal').hide();
    });

    $('#modal-cancel').click(function() {
        $('#post-input-modal').fadeOut();
        $('#post-new-modal').show();
    });

    $('#donate-edit-modal').click(function() {
        $('#donate-input-modal').fadeIn();
        $('#donate-edit-modal').hide();
    });

    $('#donate-modal-cancel').click(function() {
        $('#donate-input-modal').fadeOut();
        $('#donate-edit-modal').show();
    });

    $(".owl-carousel").owlCarousel({
        items: 4,
        margin: 20,
        loop: true,
        center: true,
        dots: false,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplayHoverPause: true
    });

    $(function () {
        $(window).scroll(function () {
            var scroll = $(window).scrollTop();
            if(scroll > 500){
                $('.footer-btn').addClass('fixed');
            }
            var doch = $(document).innerHeight(); //ページ全体の高さ
            var winh = $(window).innerHeight(); //ウィンドウの高さ
            var bottom = doch - winh; //ページ全体の高さ - ウィンドウの高さ = ページの最下部位置
            if (bottom - 160 <= $(window).scrollTop()) {
                $('.footer-btn').removeClass('fixed');
                }
            });
        
    });
});