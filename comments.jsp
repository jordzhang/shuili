<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page import="java.util.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
  <title>留言</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta http-equiv="pragma" content="no-cache" />
  <script type="text/javascript" src="static/jquery-1.9.1.js"></script>
  <style type="text/css">
    * {
      font-family: 微软雅黑, Verdana, sans-serif, 宋体;
    }
    #comments{

    }
    #comments h3 {
      background: #aaa;
      padding: 5px 5px;
    }
    #comments .comment-wrap {
      border-bottom: 1px solid #ccc;
      height: 200px;
      overflow-y: auto;
    }
    #comments .comment {
      margin-bottom: 5px;
    }
    #comments .comment-user {
      padding: 4px;
      background: #eee;
      color: #ccc;
    }
    #comments .comment-content {
      padding: 4px 2px;
    }
    #comments .comment-post {
      padding-top: 5px;
      width: 300px;
    }
    #comments .comment-post label {
      padding: 4px 0;
      margin-bottom: 4px;
    }
    #comments .comment-post textarea {
      width: 300px;
      height: 60px;
    }
    #comments .comment-post .buttons {
      float: right;
    }
  </style>

</head>
<body>
  <div id="comments">
    <h3>留言板</h3>
    <div class="comment-wrap">
    <c:forEach items="${sessionScope.comments}" var="comment">
      <%@ include file="comment.jsp"%>
    </c:forEach>
    </div>
    <div class="comment-post">
      <form action="comment-post.jsp" method="post" id="comment-form">
        <div class="forms">
        <label for="content">留言：</label>
        <textarea name="content" id="content"></textarea>
        </div>
        <div class="buttons">
        <input type="submit" value="提交"/>
        </div>
      </form>
    </div>
  </div>
  <script type="text/javascript">
    $(function(){
      $("#comment-form").submit(function(event){
        event.preventDefault();
        $.post("comment-post.jsp",{content: $(this).find("textarea:first").val()}, function(data) {
          $("#comments .comment-wrap").prepend(data)
        })

      })
    })
  </script>
</body>
</html>
