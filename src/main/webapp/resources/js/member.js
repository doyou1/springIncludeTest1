$(function(){
	
	$("#joinForm").on("submit",function(){
		
		var $this = $(this)
		
		var id = $this.children("div").children("#id")
		var pw = $this.children("div").children("#pw")
		var name = $this.children("div").children("#name")
		var email = $this.children("div").children("#email")
		
		
		if(id.val() == ""){
			alert("ID 값 입력");
			id.focus();
			return false;
		}else if(pw.val() == ""){
			alert("PW 값 입력");
			pw.focus();
			return false;
		}else if(name.val() == ""){
			alert("Name 값 입력");
			name.focus();
			return false;
		}
		
	})
	
	$('#memberLogin').on('click',function(){
		
		var id = $('#login_id')
		var pw = $('#login_pw')
		
		$.ajax({
			url : '/member/login',
			method : 'post',
			data : {
				'id' : id.val(),
				'pw' : pw.val()
			},
			dataType : 'json',
			success : function(result){
				if(result){
					alert('성공!')
					location.reload()
					
				}else{
					alert('회원정보 틀림')
				}
			},
			error : function(){
				alert('error')
			}
			
			
		})
	})
	
	
})