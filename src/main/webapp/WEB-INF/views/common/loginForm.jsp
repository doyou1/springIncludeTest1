<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul>
	<c:choose>
		<c:when test="${sessionScope.userId eq null}">
		<li>
            <a href="/member/joinForm" data-toggle="modal" data-target="#joinModal">Join</a>
	    </li>
	    <li>
            <a href="/member/loginForm" data-toggle="modal" data-target="#loginModal">Login</a>
	    </li>
		</c:when>
	  	<c:otherwise>
	  	<li>
	  		<p>${sessionScope.userName}님 환영합니다!</p>
	  	</li>
	    <li>
            <a href="/member/logout">Logout</a>
	    </li>
	  	</c:otherwise>
	</c:choose>
</ul>