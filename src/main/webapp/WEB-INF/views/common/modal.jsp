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
            <div class="form-group input-group-append idCheckdiv">
               <input type="button" class="btn btn-outline-secondary" value="아이디 중복확인" id="joinIdCheck">
            </div>
            <div class="form-group">
              <input type="password" class="form-control" id="pw" name="pw" placeholder="Enter password" required>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" id="name" name="name" placeholder="Enter name" required>
            </div>
            <div class="form-group">
              <input type="text" class="form-control" id="email" name="email" placeholder="Enter email" required>
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

 <!-- 회원정보 수정 모달 -->
 <!-- Modal -->
<div class="modal fade text-center" id="myPageModal" tabindex="-1" role="dialog" aria-labelledby="myPageModalLabel" aria-hidden="true">
   <div class="modal-dialog" role="document">
       <div class="modal-content">
        <div class="col-sm-12 col-12 user-name">
          <h1>User Update</h1>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
         <div class="col-lg-12 col-sm-12 col-12 form-input">
          <form style="text-align: center;" action="/member/update" method="post" onsubmit="return joinformCheck();">
             <div class="form-group input-group mb-3">
              <input type="text" class="form-control" value="${member.id }" readonly="readonly" aria-label="Recipient's username" aria-describedby="idCheck">
            </div>
             <div class="form-group">
                <input type="password" class="form-control" id="old_pw" name="pw" placeholder="기존의 비밀번호를 입력하세요">
             </div>
             <div class="form-group">
                <input type="password" class="form-control" id="update_pw" name="update_pw" placeholder="변경할 비밀번호를 입력하세요">
             </div>  
            <div class="form-group">
                <input type="password" class="form-control" id="update_pwCheck" placeholder="동일한 비밀번호를 다시 입력하세요">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="update_name" name="name" value="${member.name }" >
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="update_email" name="email" value="${member.email}">
            </div>
            <div class="form-group">
                <input type="text" class="form-control" id="favorite" name="member_favorite" value="${member.member_favorite }">
            </div>
         <div class="modal-footer align-items-start">
            <input type="submit"style="border: none; outline: none;" id="updateBtn" class="btn btn-success" value="수정">
         <button style="border: none; outline: none;" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         </div>
          </form> 
       </div>
     </div>
   </div>
</div> 