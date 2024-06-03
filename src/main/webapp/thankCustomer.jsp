<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.net.URLDecoder" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
<link rel="stylesheet" href="./resources/font.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&family=Playfair+Display:wght@500&display=swap" rel="stylesheet">
<title>예약 완료</title>
</head>
<body>
<%
		String reservation_reservationId ="";
		String reservation_name = "";
		String reservation_reservationDate ="";
		String reservation_reservationTime="";
		String reservation_phonenumber="";

		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(int i =0; i<cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if(n.equals("reservation_reservationId"))
					reservation_reservationId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
				if(n.equals("reservation_reservationDate"))
					reservation_reservationDate = URLDecoder.decode((thisCookie.getValue()),"utf-8");
				if(n.equals("reservation_reservationTime"))
					reservation_reservationTime = URLDecoder.decode((thisCookie.getValue()),"utf-8");
			}
		}


%>
		<jsp:include page="header.jsp" />
     
			<div class="container" style="margin-bottom:50px;">
			</div>
		<div class="container" align="center">
				<p class=font1>"예약이 완료 되었습니다"</p><br>
				<p class=font6> 상담은 <% out.println(reservation_reservationDate); %>에 진행될 예정입니다
				<p class=font6> 오늘도 좋은 하루 되세요 ^_^
		</div>

	</body>
	</html>
	<%
			session.invalidate();
			
			for (int i =0; i < cookies.length; i++) {
						Cookie thisCookie = cookies[i];
						String n = thisCookie.getName();
						if(n.equals("reservation_reservationId"))
							thisCookie.setMaxAge(0);
						if(n.equals("reservation_name"))
							thisCookie.setMaxAge(0);
						if(n.equals("reservation_reservationDate"))
							thisCookie.setMaxAge(0);
						if(n.equals("reservation_phonenumber"))
							thisCookie.setMaxAge(0);
						if(n.equals("reservation_reservationTime"))
							thisCookie.setMaxAge(0);
						
						response.addCookie(thisCookie);
				}
		%>