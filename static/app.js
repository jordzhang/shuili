$(function(){
  $(".area-data").tooltip({
    show: {
      effect: "slidedown",
      delay:250
    }
  })
  $(".switch").click(function(){
    _this = $(this);
    _this.prev().slideToggle("slow").end().toggleClass("switch-hide");


  })
})
