<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Trainer" %>
<%@ page import="dao.TrainerRepository"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
<link rel="stylesheet" href="./resources/font.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&family=Noto+Serif+KR:wght@400;600&family=Playfair+Display:wght@500&display=swap" rel="stylesheet">

<%
	String reservationId = session.getId();
%>
<title>예약현황</title>
</head>
<body>
		<jsp:include page="header.jsp" />
				<div class="container" align="center">
						<br><p class=font1> My reservation</p><hr><br><br>
						
				</div>
		<div class="container" >
				<div class="row">
						<div class="col-md-12" align="right" >
						<a href="./reservationInfo.jsp?reservationId=<%=reservationId %>" class="btn btn-outline-dark" style="text-align:right">예약 확정</a></td>
					<a href="./deleteReservation.jsp?reservationId=<%=reservationId%>" class="btn btn-outline-dark">전체 취소</a></td>
					</div>
	
				</div>
				
				
				<div style="padding-top:50px; align:center;">
						<table class="table table-hover">
								<tr>
										<th>수업명</th>
										<th>트레이너 이름</th>
										<th>비고</th>
								</tr>

								<%
									int sum = 0;
															ArrayList<Trainer> reservationList = (ArrayList<Trainer>) session.getAttribute("reservationlist");
															if (reservationList == null)
																reservationList = new ArrayList<Trainer>();
															
															for(int i=0; i<reservationList.size(); i++) { //수업 리스트 하나씩 출력하기
																Trainer trainer = reservationList.get(i);
															
								%>
								<tr>
										<td><%=trainer.getTrainerId() %> - <%=trainer.getLesson()%></td>
										<td><%=trainer.getTname() %></td>
										<td><a href="./removeReservation.jsp?id=<%=trainer.getTrainerId()%>" class="badge badge-danger">삭제</a></td>
								</tr>
								<%
													}
								%>

						</table>
					
				<hr>
			</div>
			
		</div>
</body>
</html>