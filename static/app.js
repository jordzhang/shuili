$(function(){

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
  updateData();
  setInterval("updateData()", 5000)
})
function updateData() {
  $.getJSON("json.jsp", function(data) {
    $("#overview li:first a").text(data["overview"]["d1"]);
    $("#overview li:nth-child(2) a").text(data["overview"]["d2"]);

    var tmpl = $.templates("#area_tmpl");
    var content = tmpl.render({datas: data["datas"]});
    $("#datas").empty().html(content);

    $(".area-data").each(function(){
      $(this).qtip({
        content: {
          text: $(this).next()
        },
        position: {
          target: 'mouse',
          adjust: { mouse: false },
          viewport: $("#map")
        },
        style : {
          classes: "qtip-blue"
        }
      })
    });

  })
}
