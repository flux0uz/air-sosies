const initBgcolorCardsIndex = () => {
  $(document).ready(function() {
    $('.card-body').each(function () {
        var hue = 'rgb(' + Math.floor(Math.random() * (360)) + ',' + Math.floor(Math.random() * (360)) + ',' + Math.floor(Math.random() * (360)) + ')';
        $(this).css("background-color", hue);
    });
  });
}

export { initBgcolorCardsIndex };