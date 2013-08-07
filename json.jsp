<%@ page contentType="application/json;charset=UTF-8" language="java" isELIgnored="false" %>
<%
// {nanjing:{time:'', value:'', }}
String[][] areas = {{"nanjing", "南京"},{"suzhou", "苏州"},{"wuxi", "无锡"},{"lishui", "溧水"},{"gaochun", "高淳"},{"changzhou", "常州"},{"zhenjiang", "镇江"},{"xuzhou", "徐州"},{"suqian", "宿迁"},{"huaian", "淮安"}};
StringBuilder sb = new StringBuilder(100);
sb.append("{").append("\n");
sb.append("\"overview\":").append("{\"d1\":").append(Math.round(Math.random()*100));
sb.append(", \"d2\":").append(Math.round(Math.random()*100)).append("}");
sb.append("\n");
sb.append(",\"datas\":[");
for(int i=0; i< 10; i++) {

  if (i !=0) {
    sb.append("\n");
    sb.append(",");
  }
  sb.append("{");
  sb.append("\"").append("code").append("\"").append(":").append("\"").append(areas[i][0]).append("\"");
  sb.append(",");
  sb.append("\"").append("name").append("\"").append(":").append("\"").append(areas[i][1]).append("\"");
  sb.append(",");
  sb.append("\"").append("top").append("\"").append(":").append("\"").append(Math.round(Math.random()*577)).append("\"");
  sb.append(",");
  sb.append("\"").append("left").append("\"").append(":").append("\"").append(Math.round(Math.random()*744)).append("\"");
  sb.append(",");
  sb.append("\"").append("link").append("\"").append(":").append("\"").append("area.jsp").append("\"");
  sb.append(",");
  sb.append("\"").append("height").append("\"").append(":").append("\"").append(Math.round(Math.random()*100)).append("\"");
  sb.append(",");
  sb.append("\"").append("time").append("\"").append(":").append("\"").append(new java.util.Date()).append("\"");
  sb.append("}");
}
sb.append("]");
sb.append("\n");
sb.append("}");
out.write(sb.toString());
%>
