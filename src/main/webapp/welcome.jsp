<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>

<html>
<head>
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/font.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&family=Noto+Serif+KR:wght@400;600&family=Playfair+Display:wght@500&display=swap" rel="stylesheet">
<jsp:include page="header.jsp" />
</head>
<body>
  <div class="contatiner">
    <div class="text-center">
		<img src="./resources/image/background1.png" class="img-fluid"  ><br><br>
  	</div>
  	</div>
  	
  	<div class="container" align="center">
  	  	<br><p class=font1 >"이보다 더 좋을 수 있을까" </p>
  	  	<p class=font6>SK Fitness에서 시작하세요</p><br><br><br>
  	  	</div>
  	
  	  <div class="contatiner" align="center" style="background-color:	#FAF0E6;">
    <div class="row featurette">
      <div class="col-md-6">
        <br><br><p class=font4  align="center"><b></b> FITNESS </b></p><br>
        <p class=font6> 다양한 운동기구 구비완료 <br>
        					   	유산소 기구, Hammer Strength를 통해 <br>
        							단련해보세요. </p><br>
        <p> <a href="./Fitness.jsp" class="btn btn-dark" role="button"> 자세히 보기 </a><br><br>
      </div>
      <div class="col-md-6">
      		<img src ="./resources/image/facility1.jpg" style="width:100%">
        
      </div>
    </div>
  
    <div class="row featurette">
      <div class="col-md-6 order-md-2" >
        <br><br><p class=font4  align="center" >PILATES </p><br>
        <p class=font6>개인룸과 소규모 그룹 레슨가능 <br>
        		깨끗하고 최신식 기구들로 
        		갖춰 있습니다</p><br><br>
        	<a href="./Pilates.jsp" class="btn btn-dark" role="button"> 자세히 보기 </a><br><br>
      </div>
      <div class="col-md-6 order-md-1">
        <img src ="./resources/image/Filates.jpg" style="width:100%">
      </div>
    </div>

   
    <div class="row featurette">
      <div class="col-md-6">
        <br><br><p class=font4  align="center">FACILITY </p>
        <p class=font6> 스포츠 시설 뿐 아니라 다양한 <br>
        						  부가시설도 겸비 </p><br><br>
     	<a href="./Facility.jsp" class="btn btn-dark" role="button"> 자세히 보기 </a><br><br>
      </div>
      <div class="col-md-6">
         <img src ="./resources/image/rounge.jpg" class="img-fluid">
      </div>
    </div>
</div>
    <hr class="featurette-divider">
    
    <jsp:include page="footer.jsp" />
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>