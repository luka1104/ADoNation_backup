document.addEventListener("turbolinks:load", function() {
    console.log("test");

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

    $('#user-edit-modal').click(function() {
        $('#user-input-modal').fadeIn();
        $('#user-edit-modal').hide();
    });

    $('#user-modal-cancel').click(function() {
        $('#user-input-modal').fadeOut();
        $('#user-edit-modal').show();
    });

    $('#owner-edit-modal').click(function() {
        $('#owner-input-modal').fadeIn();
        $('#owner-edit-modal').hide();
    });

    $('#owner-modal-cancel').click(function() {
        $('#owner-input-modal').fadeOut();
        $('#owner-edit-modal').show();
    });

    $('#preview-edit-modal').click(function() {
        $('#preview-input-modal').fadeIn();
        $('#preview-edit-modal').hide();
    });

    $('#preview-modal-cancel').click(function() {
        $('#preview-input-modal').fadeOut();
        $('#preview-edit-modal').show();
    });

    $('#preview2-edit-modal').click(function() {
        $('#preview2-input-modal').fadeIn();
        $('#preview2-edit-modal').hide();
    });

    $('#preview2-modal-cancel').click(function() {
        $('#preview2-input-modal').fadeOut();
        $('#preview2-edit-modal').show();
    });

    $('#preview3-edit-modal').click(function() {
        $('#preview3-input-modal').fadeIn();
        $('#preview3-edit-modal').hide();
    });

    $('#preview3-modal-cancel').click(function() {
        $('#preview3-input-modal').fadeOut();
        $('#preview3-edit-modal').show();
    });

    $('#preview4-edit-modal').click(function() {
        $('#preview4-input-modal').fadeIn();
        $('#preview4-edit-modal').hide();
    });

    $('#preview4-modal-cancel').click(function() {
        $('#preview4-input-modal').fadeOut();
        $('#preview4-edit-modal').show();
    });

    $('#preview5-edit-modal').click(function() {
        $('#preview5-input-modal').fadeIn();
        $('#preview5-edit-modal').hide();
    });

    $('#preview5-modal-cancel').click(function() {
        $('#preview5-input-modal').fadeOut();
        $('#preview5-edit-modal').show();
    });

    $('#preview6-edit-modal').click(function() {
        $('#preview6-input-modal').fadeIn();
        $('#mainbody-edit-input').fadeIn();
        $('#preview6-fadeout-modal').fadeOut();
        $('#preview6-fadein-modal').fadeOut();
        $('#preview6-edit-modal').hide();
    });

    $('#preview6-modal-cancel').click(function() {
        $('#preview6-input-modal').fadeOut();
        $('#mainbody-edit-input').fadeOut();
        $('#preview6-fadeout-modal').fadeIn();
        $('#preview6-fadein-modal').fadeIn();
        $('#preview6-edit-modal').show();
    });

    $(document).ready(function(){
        $('#slick-center').slick({
            centerMode: true,
            focusOnSelect: true,
            pauseOnFocus: false,
            centerPadding: '60px',
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 5000,
            speed: 800,
            responsive: [
              {
                breakpoint: 768,
                settings: {
                  arrows: false,
                  centerMode: true,
                  centerPadding: '40px',
                  slidesToShow: 3
                }
              },
              {
                breakpoint: 480,
                settings: {
                  arrows: false,
                  centerMode: true,
                  centerPadding: '40px',
                  slidesToShow: 1
                }
              }
            ]
        });
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
            if (bottom - 523 <= $(window).scrollTop()) {
                $('.footer-btn').removeClass('fixed');
                }
            });
        
    });
    $(function () {
        $(window).scroll(function () {
            var scroll = $(window).scrollTop();
            $('.footer-btn-ad').addClass('fixed-ad');
            var doch = $(document).innerHeight(); //ページ全体の高さ
            var winh = $(window).innerHeight(); //ウィンドウの高さ
            var bottom = doch - winh; //ページ全体の高さ - ウィンドウの高さ = ページの最下部位置
            if (bottom - 500 <= $(window).scrollTop()) {
                $('.footer-btn-ad').removeClass('fixed-ad');
                }
            });
        
    });
});