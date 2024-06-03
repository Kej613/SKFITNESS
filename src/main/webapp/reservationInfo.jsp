<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" >
<link rel="stylesheet" href="./resources/font.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&family=Playfair+Display:wght@500&display=swap" rel="stylesheet">

<title>예약자확인</title>
</head>
<body>
		<jsp:include page="header.jsp"  />
				<div class="container" >
						<br><br><p class=font1>예약자 정보</h3><hr><br><br>
				</div>
		<div class="container">
				<form action="./processReservationInfo.jsp" class="form-horizontal" method="post">
						<input type="hidden" name="reservationId" value="<%=request.getParameter("cartId") %>"  />
						<div class="form-group row">
								<label class="col-sm-2">성명</label>
								<div class="col-sm-3">
										<input name="name" type="text" class="form-control"  />
								</div>
						</div>
						<div class="form-group row">
								<label class="col-sm-2">전화번호</label>
								<div class="col-sm-3">
										<input name="phonenumber" type="text" class="form-control"  /> 
								</div>
						</div>
						<div class="form-group row">
								<label class="col-sm-2">상담날짜</label>
								<div class="col-sm-3">
										<input name="reservationDate" type="text" class="form-control"  />(yyyy/mm/dd)
								</div>
						</div> <br><br>

						<div class="form-group row">
								<div class="col-sm-10 " align="right" >
										<a href="./reservation.jsp?reservationId=<%=request.getParameter("reservationId") %>" 
													class="btn btn-outline-dark" role="button"> 이전 </a>
										<input type="submit" class="btn btn-outline-dark" value="등록" />
										<a href="./checkOutCancelled.jsp" class="btn btn-outline-dark" role="button">취소</a>
								</div>
						</div>
				 </form>
			</div>
</body>
</html>