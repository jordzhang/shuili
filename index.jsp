<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ page import="java.util.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <title>水利地图数据demo</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="pragma" content="no-cache" />
  <script type="text/javascript" src="static/jquery-1.9.1.js"></script>
  <script type="text/javascript" src="static/jquery.qtip.js"></script>
  <script type="text/javascript" src="static/jsrender.js"></script>
  <script type="text/javascript" src="static/jquery.tablescroll.js"></script>
  <script type="text/javascript" src="static/jquery-ui/ui/jquery-ui.js"></script>
  <script type="text/javascript" src="static/app.js"></script>

  <link rel="stylesheet" type="text/css" href="static/jquery.qtip.css">
  <link rel="stylesheet" type="text/css" href="static/jquery.tablescroll.css">
  <link rel="stylesheet" type="text/css" href="static/jquery-ui/themes/redmond/jquery-ui-1.10.3.custom.css">
  <link rel="stylesheet" type="text/css" href="static/app.css">
</head>
<body>
  <div id="map">
    <div id="datas">
      test
    </div>
    <div id="overview">
      <div class="main">
        <h3>汛情概述</h3>
        <ul>
          <li>当前河道超警戒的站点共<a href="<%=request.getContextPath()%>/data.jsp" ></a>个</li>
          <li>当前水库超汛限的站点共<a href="<%=request.getContextPath()%>/data.jsp"></a>个</li>
        </ul>
      </div>
      <a href="javascript:void(0)" class="switch switch-rt"></a>
    </div>
    <div id="condition">
      <div class="main">
        <p>
          <span>实时水情</span>
          <select>
            <option>今日水情</option>
          </select>
        </p>
        <table cellspaing="0">
          <thead>
            <tr>
              <td>A111</td>
              <td>A211</td>
              <td>A311</td>
            </tr>
          </thead>
          <tbody>
            <tr class="first">
              <td>1</td>
              <td>2</td>
              <td>3</td>
            </tr>
            <tr>
              <td>1</td>
              <td>2</td>
              <td>3</td>
            </tr>
            <tr>
              <td>1</td>
              <td>2</td>
              <td>3</td>
            </tr>
            <tr>
              <td>1</td>
              <td>2</td>
              <td>3</td>
            </tr>
          </tbody>
        </table>
        <table cellspaing="0">
          <thead>
            <tr>
              <td>d1</td>
              <td>d2</td>
              <td>d3</td>
            </tr>
          </thead>
          <tbody>
            <tr class="first">
              <td>1</td>
              <td>2</td>
              <td>3</td>
            </tr>
            <tr>
              <td>1</td>
              <td>2</td>
              <td>3</td>
            </tr>

          </tbody>
        </table>
      </div>
      <a href="javascript:void(0)" class="switch switch-lb"></a>
    </div>

  </div>
  <div id="detail">
    <object type="application/x-shockwave-flash" data="static/1.swf" width="100%" height="100%" id="chart" style="visibility: visible;"></object>
  </div>
  <script type="text/x-jsrender" id="area_tmpl" >
    {{for datas }}
    <div class="area" style="top:{{:top}}px;left:{{:left}}px;" id="area_{{:code}}">
      <a href="javascript:openDialog()" class="area-data">{{:name}}<span>{{:height}}</span></a>
      <table class="area-tip">
        <tr>
          <th style="width: 30px;">水位</th>
          <th  style="width: 250px;">时间</th>
        </tr>
        <tr>
          <td>{{:height}}</td>
          <td>{{:time}}</td>
        </tr>
        <tr>
          <td>{{:height}}</td>
          <td>{{:time}}</td>
        </tr>
        <tr>
          <td>{{:height}}</td>
          <td>{{:time}}</td>
        </tr>
        {{if name=='苏州'}}
        <tr>
          <td>{{:height}}</td>
          <td>{{:time}}</td>
        </tr>
        {{/if}}
      </table>

    </div>
    {{/for}}
  </script>
</body>
</html>
