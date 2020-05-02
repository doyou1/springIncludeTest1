<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<jsp:include page="/WEB-INF/views/common/head.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/nav.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/modal.jsp"></jsp:include>
	<br>
	<br>
	<jsp:include page="/WEB-INF/views/common/loginForm.jsp"></jsp:include>	
	<jsp:include page="/WEB-INF/views/common/memberList.jsp"></jsp:include>
</body>

</html>
