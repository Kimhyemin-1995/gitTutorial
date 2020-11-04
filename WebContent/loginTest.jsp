<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("UTF-8");
// 	login 버튼이 클릭되면 넘어오는 데이터(id, password)를 받는다
	String id = "";
	String password = "";
	try {
		id = request.getParameter("id").trim();
		password = request.getParameter("password").trim();
	} catch(Exception e){ }

	// 스크립트로 if문 전체 묶음
	out.println("<script>");
	if(id.equals("hong") && password.equals("123456")){
		// 로그인 처리
		session.setAttribute("id", id);
		session.setAttribute("name", "관리자");
		// out.println("<script>");
		out.println("alert('" + session.getAttribute("name") + "으로 로그인됨')");
		// out.println("</script>");
		session.setAttribute("login", "yes");
	} else if(id.isEmpty() || password.isEmpty()){
		out.println("alert('아이디, 비밀번호 입력')");
	} else{
		out.println("alert('올바르지 않은 로그인 정보')");
	}
	out.println("</script>");
%>

<!-- 로그아웃 상태일 경우 브라우저에 표시될 내용 -->
<form action="?" method="post">
	<table width="300" border="1" cellpadding="5" cellspacing="0">
		<tr>
			<td width="50">
				<!-- id에 반영되는 속성 지정, 아래는 같은 셀에 있는 경우, 여기는 같은 셀에 있는 경우 -->
				<label for="id">id</label>
			</td>
			<td width="250">
				<input id="id" type="text" name="id">
			</td>
		</tr>
		<!-- <tr>
			<td colspan="2">
				라벨: 텍스트를 클릭해도 입력 창에 커서가 들어감
				<label>
					id <input type="text" name="id">
				</label>
			</td>
			<td width="250">
				<input type="text" name="id">
			</td>
		</tr> -->
		<tr>
			<td>pw</td>
			<td>
				<input type="text" name="password">
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="login">
			</td>
		</tr>
	</table>
</form>


</body>
</html>