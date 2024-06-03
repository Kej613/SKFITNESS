<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="dto.Trainer" %>
<%@ page import="dao.TrainerRepository"%>

<%
		request.setCharacterEncoding("UTF-8");

		String reservationId = session.getId();
		
		String reservation_reservationId ="";
		String reservation_name = "";
		String reservation_reservationDate ="";
		String reservation_phonenumber="";
		
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null) {
			for(int i =0; i<cookies.length; i++) {
				Cookie thisCookie = cookies[i];
				String n = thisCookie.getName();
				if(n.equals("reservation_reservationId"))
					reservation_reservationId = URLDecoder.decode((thisCookie.getValue()),"utf-8");
				if(n.equals("reservation_name"))
					reservation_name = URLDecoder.decode((thisCookie.getValue()),"utf-8");
				if(n.equals("reservation_reservationDate"))
					reservation_reservationDate = URLDecoder.decode((thisCookie.getValue()),"utf-8");
				if(n.equals("reservation_phonenumber"))
					reservation_phonenumber = URLDecoder.decode((thisCookie.getValue()),"utf-8");
					
			}
		}
%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
<link rel="stylesheet" href="./resources/font.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&family=Playfair+Display:wght@500&display=swap" rel="stylesheet">
<title>예약 정보</title>
</head>
<body>
		<jsp:include page="header.jsp" />
				<div class="container" align="center">
						<br><br><p class=font1> 예약 확인 </h3><hr><br><br>
				</div>
		
		<div class="container col-8" >
			<div class="row justify-content-between">
			<table class="table table-hover">
						<tr>
								<th class="text-center">수업명 </th>
								<th class="text-center">트레이너 이름</th>
								<th class="text-center">예약자</th>
								<th class="text-center">전화번호 </th>
								<th class="text-center">상담날짜 </th>
								
		
						</tr>
						<%
							int sum =0;
												ArrayList<Trainer> reservationList = (ArrayList<Trainer>) session.getAttribute("reservationlist");
												if(reservationList == null) 
													reservationList = new ArrayList<Trainer>();
												for (int i=0; i < reservationList.size(); i++) { //상품 리스트 하나씩 출력하기
														Trainer trainer = reservationList.get(i);
												
						%>
						<tr>
								<td class="text-center"><em><%=trainer.getLesson() %></em></td>
								<td class="text-center"><%=trainer.getTname()%></td>
								<td class="text-center"><%out.println(reservation_name); %></td>
								<td class="text-center"><%out.println(reservation_phonenumber); %></td>
								<td class="text-center"><em><%out.println(reservation_reservationDate); %></em>
	
						</tr>
						<% 
								}
								
						%>
	
						</table>
				
				</div><br><br>
				<div>
						
						<br><br><div class="row">
							<div class="col-md-12" align="right">
						<a href="./thankCustomer.jsp" class="btn btn-outline-dark" role="button"> 확인 완료 </a>
						<a href="./checkOutCancelled.jsp" class="btn btn-outline-dark" role="button"> 취소 </a>
						</div>
						</div>
					</div>
				</div>							
	</body>
	</html>					
						
						
						
					