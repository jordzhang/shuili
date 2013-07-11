$(function(){
  $(".area-data").each(function(){
    $(this).qtip({
      content: {
        text: $(this).next("div")
      }
    })
  });
  $(".switch").click(function(){
    _this = $(this);
    _this.prev().slideToggle("slow", function(){
      _this.toggleClass("switch-hide");
    });
  })
  $("#overview .main a").click(function(event) {
    event.preventDefault();
    $(this).modal();
  });
})
