<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="container mt-5">
  <h2>Member List</h2>
  <p><b>include 태그 이용 웹페이지 구현</b></p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>ID</th>
        <th>PW</th>
        <th>NAME</th>
        <th>EMAIL</th>
      </tr>
    </thead>
    <tbody>
		<c:forEach var="member" items="${members}">
			<tr>
				<td>
					${member.id}
				</td>
				<td>
					${member.pw}
				</td>
				<td>
					${member.name}
				</td>
				<td>
					${member.email}
				</td>
			</tr>			
		</c:forEach>
	</tbody>
  </table>
</div>
    