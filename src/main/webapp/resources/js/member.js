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
		
		return false;
	})
	
	$("#joinIdCheck").on('click',function(){
		var checkId = $('#id')
		
		if(checkId.val() != ''){
			
			$.ajax({
				
				url : '/member/joinIdCheck',
				type : 'post',
				data : {
					'id' : checkId.val()
				},
				contentType: false,
				processData: false,
				success : function(result){
					
					alert(result)
					if(result == 0){
						alert('중복되는 아이디 있음')
					}else if(result == 1){
						alert('사용가능한 아이디!')
					}else{
						alert('알수없는 오류입니다')
						setTimeout(function(){
							location.reload()
						},200)
					}
				},
				error : function(){
					alert('error')
				}
			})			
		}else{
			alert('확인할 ID 입력요망')
		}

	})
})