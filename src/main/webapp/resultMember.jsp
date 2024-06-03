<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="./resources/font.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&family=Playfair+Display:wght@500&display=swap" rel="stylesheet">

<title>회원 정보</title>
</head>

<body>
	<jsp:include page="/header.jsp" />
		<div class="container" align="center">
			<br><br><p class=font1>Member Info</p><hr><br><br>
		</div>

	<div class="container" align="center">
		<%
			String msg = request.getParameter("msg");

			if (msg != null) {
				if (msg.equals("0"))
					out.println(" <p class=font1>" + "회원정보가 수정되었습니다.");
				else if (msg.equals("1")) {
					String loginId = (String) session.getAttribute("sessionId");
				out.println("<p class=font1>" +"회원가입이 완료되었습니다");
				
				}
				else if (msg.equals("2")) {
					String loginId = (String) session.getAttribute("sessionId");
					out.println("<p class=font1>" + "["+loginId+"]"+ "님 로그인 되었습니다.");
					
				}				
			} else {
				out.println("<p class=font1>" +"회원정보가 삭제되었습니다.");
			
			}
		%>
		
		<div class="contatiner">
			<br><br>
				 <a href="./welcome.jsp" class="btn btn-outline-dark" role="button"> 메인 홈으로 </a>
					
		</div>
	</div>	
</body>
</html>