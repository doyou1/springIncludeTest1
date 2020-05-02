<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="/">Home</a>

  <!-- Toggler/collapsibe Button -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>

  <!-- Navbar links -->
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav ml-auto">
	<c:choose>
		<c:when test="${sessionScope.userId eq null}">
		<li class="nav-item">
            <a class="nav-link js-scroll-trigger joinBtn" href="/member/joinForm" data-toggle="modal" data-target="#joinModal">Join</a>
	    </li>
	    <li class="nav-item">
            <a class="nav-link js-scroll-trigger loginBtn" href="/member/loginForm" data-toggle="modal" data-target="#loginModal">Login</a>
	    </li>
		</c:when>
	  	<c:otherwise>
	  	<li class="nav-item">
            <a class="nav-link js-scroll-trigger myPageBtn" href="/member/myPage" data-toggle="modal" data-target="#myPageModal">My Page</a>
	    </li>
	    <li class="nav-item">
            <a class="nav-link js-scroll-trigger logoutBtn" href="/member/logout">Logout</a>
	    </li>
	  	</c:otherwise>
	</c:choose>
    
    </ul>
  </div>
</nav>