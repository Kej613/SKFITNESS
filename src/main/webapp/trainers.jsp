<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Trainer" %> 
<%@ page import="dao.TrainerRepository" %>
<jsp:useBean id="trainerDAO" class="dao.TrainerRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/font.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&family=Playfair+Display:wght@500&display=swap" rel="stylesheet">

<title>Trainers</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	  <div class="contatiner">
    <div class="text-center">
	<img src="./resources/image/personaltraining.png" class="img-fluid"  ><br>
	<br>
  	    </div>
  	</div>
  	
		<div class= "container" align= center>
		<br>
			<p>Personal Training</p>
			<p class=font1>열정적인 피트니스 메이트</p><br>
			<p class=font6>고객의 성향과 운동목표에 맞게 계획을 수립하고 그에맞게 <br>
										최선을 다하고 열정적으로 임할 것입니다.  </p><br><br>
			</div>
				<hr>
			<div class="container">
		<div class="row align-items-center" align="center">
				 <div class="col"><br>
					<p class=font4>PT Trainer</p><br><hr>
			</div>
			</div>
			</div>
			
			<%
		TrainerRepository dao= TrainerRepository.getInstance();
		ArrayList<Trainer> listOfTrainers = dao.getAllTrainers();
%>


		
	<div class="container">
		<div class="row" align="center">
			<%
				for (int i=0; i<listOfTrainers.size(); i++) {
						Trainer trainer = listOfTrainers.get(i);
			%>
				 <div class="col-md-4">
				 	<img src="./resources/trainer/<%=trainer.getFilename() %>" style="width:70%">
					<br><p class=font5><%=trainer.getTname() %></p>
					<p><b><%=trainer.getcategory()%></b> 
					<p><%=trainer.getLesson() %>
					<p> <a href="./trainer.jsp?id=<%=trainer.getTrainerId() %>" class="btn btn-outline-dark" role="button"> 프로필 보기 </a>
					</div>
					<%
								}
				%>
				</div>
			</div>
			<hr>
					
			<jsp:include page="footer.jsp" />
</body>
</html>