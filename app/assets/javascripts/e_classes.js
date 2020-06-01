$(document).ready(function () {
    $('ul li').click(function(e) {
    	alert("hello from js.");

        $('ul li').removeClass('current');

        var $this = $(this);
        if (!$this.hasClass('current')) {
            $this.addClass('current');
        }
        //e.preventDefault();
    });
});