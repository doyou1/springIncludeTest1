<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!-- 회원가입 -->
 <!-- Button trigger modal-->
<div id="joinModal" class="modal fade text-center">
  <div class="modal-dialog modal-lg">
    <div class="col-lg-8 col-sm-8 col-12 main-section">
      <div class="modal-content modal-last-center py-3">
        <div class="col-lg-12 col-sm-12 col-12 user-name">
          <h1>User Join</h1>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>        
        <div class="col-lg-12 col-sm-12 col-12 form-input">
          <form id="joinForm" action="/member/join" method="post">
            <div class="form-group input-group mb-3">
              <input type="text" class="form-control" id="id" name="id" placeholder="Enter Id" required>
            </div>
            <div class="form-group">
              <input type="password" class="form-control" id="pw" name="pw" placeholder="Enter password" required>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" id="name" name="name" placeholder="Enter name" required>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" id="email" name="email" placeholder="Enter email">
            </div>
            <input type="submit" value="Join" id="memberJoin" class="btn btn-success btn-block">
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

  <!-- 로그인 -->
   <!-- Modal -->
<div id="loginModal" class="modal fade text-center">
  <div class="modal-dialog">
    <div class="col-lg-8 col-sm-8 col-12 main-section">
      <div class="modal-content">
        <div class="col-lg-12 col-sm-12 col-12 user-name">
          <h1>User Login</h1>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="col-lg-12 col-sm-12 col-12 form-input">
            <div class="form-group">
              <input type="text" class="form-control" id="login_id" placeholder="Enter Id" required>
            </div>
            <div class="form-group">
              <input type="password" class="form-control" id="login_pw" placeholder="Enter Password" required>
            </div>
            <button type="button" id="memberLogin" class="btn btn-success">Login</button>
        </div>
         <hr>
      </div>
    </div>
  </div>
</div>