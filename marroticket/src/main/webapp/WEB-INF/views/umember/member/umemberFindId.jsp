<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(document).ready(function() {
	$("#umemberFindId").on("click", function() {
		//json
		var uName =  $("#uName");
		var uPhoneNumber =  $("#uPhoneNumber");
		var uNameVal = uName.val();
		var uPhoneNumberVal = uPhoneNumber.val();
		
		var jsonObject = { uName : uNameVal , uPhoneNumber:uPhoneNumberVal };
		var jsonStg = JSON.stringify(jsonObject);
		console.log(jsonStg);
		
		//ajax
		$.ajax({
			type : "post",
			url : "/umember/findId",
			data : jsonStg,
			contentType : "application/json; charset=utf-8",
			success : function(result){
				switch (result) {
				case 'none':
					//이름 또는 휴대폰 번호를 하나 이상 입력하지 않았을 때
					alert("정보를 입력하세요.");
					break;
				case 'fail':
					//입력한 이름와 휴대폰 번호에 일치하는 아이디가 없을 때
					alert("아이디 찾기 실패 \n입력하신 정보와 일치하는 아이디가 없습니다.");
					break;
				case 'novalid':
					//입력한 이름와 휴대폰 번호가 유효하지 않을 때
					alert("알맞은 형식에 맞게 정보를 입력해주세요");
					break;
				default :	
					//아이디 찾기 성공
					console.log('회원의 아이디 : ' + result);
					alert("아이디 찾기 성공 \n아이디는 "+result+"입니다.");
					break;
				}		
			}
		});
	});
});	
</script>
<p>아이디 찾기</p>
<div>
	<table>
		<tr>
			<td><label for="u_name">이름</label></td>
		</tr>
		<tr>
			<td><input type='text' name='uName' id='uName'/></td>
		</tr>
		<tr>
			<td><label for="u_phoneNumber">휴대폰번호</label></td>
		</tr>
		<tr>
			<td><input type='text' name='uPhoneNumber' id='uPhoneNumber' />
		</tr>
		<tr>
			<td align='right'><input type='button' id='umemberFindId' value='찾기'></td>
		</tr>
	</table>
</div>