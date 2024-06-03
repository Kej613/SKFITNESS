<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="dto.Trainer" %>
<%@ page import="dao.TrainerRepository" %>
<%@ page errorPage="exceptionNoTrainerId.jsp" %>
<jsp:useBean id="trainerDAO" class="dao.TrainerRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/font.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&family=Playfair+Display:wght@500&display=swap" rel="stylesheet">

<title>트레이너 정보</title>
<script type="text/javascript">
	function addToReservation() {
		if (confirm("상담 예약을 하시겠습니까 ? " )) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}	
	}
</script>
</head>
<body>
	<jsp:include page="header.jsp" />

		<div class= "container" align="center">
			<br><p class=font1> Introduction </p><hr><br><br>
		</div>
	</div>
	<%
		String id = request.getParameter("id");     //상품 목록 페이지로부터 전달되는 상품 아이디를 전송받도록 request 내장 겍체의 getParameter()메소드 작성
		TrainerRepository dao = TrainerRepository.getInstance();    //getTrainerById() 메소드를 호출하여 반환 결과 값을 Trainer 객체 타입 변수 trainer에 저장한다. 
		Trainer trainer = dao.getTrainerById(id);
			
	%>
	<div class="container" >
		<div class="row">
			<div class="col-md-5">
					<img src="./resources/trainer/<%out.println(trainer.getFilename());%>" style="width:70%">
			</div>
			<div class="col-md-6">
				<p class=font5><b><%out.println(trainer.getTname()); %></b> [<%out.println(trainer.getcategory());%>]</p>
				<p><b><%out.println(trainer.getLesson()); %></b>
				<p><%out.println(trainer.getAbility()); %>
				<p><%out.println(trainer.getAbility1()); %>
				<p><%out.println(trainer.getAbility2()); %>
				<p><%out.println(trainer.getAbility3()); %>
			
				<p> <form name="addForm" action="./addReservation.jsp?id=<%=trainer.getTrainerId() %>" method="post">
				<div class="container" align="right">
				<p> <a href="#" class="btn btn-outline-dark" onclick="addToReservation()"> 상담 예약 </a></div>
				       
					
			</form>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>