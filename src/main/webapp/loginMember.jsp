<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/font.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&family=Playfair+Display:wght@500&display=swap" rel="stylesheet">

<title>Login</title>

</head>
<body>
	<jsp:include page="/header.jsp" />
		

	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
					<div class="form-signin-heading" >
						<br><br><p class=font4>Please sign in</h3><br>
					</div>
		
		
			<%
				String error = request.getParameter("error");
				if (error != null) {
					out.println("<div class='alert alert-danger'>");
					out.println("아이디와 비밀번호를 확인해 주세요");
					out.println("</div>");
				}
			%>
			<form class="form-signin" action="processLoginMember.jsp" method="post">

				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name</label> 
					<input type="text" class="form-control" placeholder="ID" name='id' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label>
				    <input type="password" class="form-control" placeholder="Password" name='password' required>
				</div>
				<button class="btn btn btn-lg btn-outline-dark btn-block" type="submit">로그인</button>

			</form>
		</div>
	</div>
</body>
</html>