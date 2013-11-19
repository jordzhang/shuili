<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page import="java.util.*" %>
<%
Map map = new HashMap();
map.put("user", "admin");
map.put("content", request.getParameter("content"));
map.put("createdAt", new Date());
if (session.getAttribute("comments") == null) {
  session.setAttribute("comments", new ArrayList<Map>());
}
((List)(session.getAttribute("comments"))).add(map);
request.setAttribute("comment", map);
%>
<%@ include file="comment.jsp"%>

