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
  fixTable();
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
    // $('#condition .main table').fixedHeader({topOffset: 10})
  // $('#condition .main table').fixedHeaderTable({ height: 100});
  })
}
function fixTable() {

  var mixTable = null;
  var width = 0;
  $('#condition .main table').each(function(){
    if ($(this).width() > width) {
      mixTable = $(this);
      width = $(this).width();
    }
  });
  var tdWidth = []
  mixTable.find("thead th").each(function(){
    tdWidth.push($(this).width());
  })
  var len = tdWidth.length;
  $('#condition .main table th, #condition .main table td').each(function(index){
    $(this).width(tdWidth[index%len]+2);
  })
}
