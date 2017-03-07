<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <script type = "text/javascript">
var BASE_PATH = '<%=request.getContextPath()%>';
var nowDate = new Date();
</script>
</head>
<%@include file="taglib.jsp"%>
<%@include file="jquery.jsp"%>
<body>
<form method="post" id="exportNoPageForm">
    <input type="hidden" id="exportdata" name="exportdata"/>
</form>
</body>
</html>