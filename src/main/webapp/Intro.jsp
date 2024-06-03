<%@ page contentType="text/html; charset=utf-8" %>

<html>
<head>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/font.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&family=Noto+Serif+KR:wght@400;600&family=Playfair+Display:wght@500&display=swap" rel="stylesheet">
	<title>About</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	
  <div class="contatiner">
    <div class="text-center">
	<img src="./resources/image/aboutus2.png " class="img-fluid"><br>
	<br>
  	    </div>
  	</div>
			
	<div class="container" align="center">
		<h7> About us </h7>
		<p class=font1>이제까지의 스포츠 시설과는 다르다</p><br>
		<p class=font6> 최적의 편안함과 최고의 즐거움을 느낄 수 있는 곳<br>
								 SK FITNESS CENTER는 고객의 가치있는 삶과 시간을 위해 <br>
	  							  깨끗한 운동 환경과 새로운 라이프 스타일을 만들도록 노력하겠습니다</p> <br><br>
	
	</div>
			
		<div class="contatiner">
    <div class="text-center">
	<img src="./resources/image/front.png" class="img-fluid" ><br>
  	    </div>
  	</div>
  	
   <div class="container px-4 py-5" id="featured-3">
   	<div class="pb-2 border-bottom">
   		<p class=font1> 이용안내 </p>
   		<div class="feature-icon bg-secondary bg-gradient">
          <svg class="bi" width="0.5em" height="0.08em"></svg>
   	</div>
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
      <div class="feature col">
        <p class=font1>시설 이용시간</p>
         <div class="feature-icon bg-secondary bg-gradient">
          <svg class="bi" width="0.5em" height="0.08em"></svg>
        </div><br>
        <p class=font6>[평일] 7:00 ~ 22:00 <br> 
        						[주말] 9:00 ~ 21:00  <br>
        						*공휴일, 매주 둘쨋주, 넷째주 일요일은 휴무 </p>
     
      </div>
      <div class="feature col">
     
        <p class=font1>상담 및 문의</p>
         <div class="feature-icon bg-secondary bg-gradient">
          <svg class="bi" width="0.5em" height="0.08em"></svg>
        </div><br>
        <p class=font6> 전화: 02-933-0492 <br>
        							상담 및 문의전화 환영합니다 </p>
      
      </div>
      <div class="feature col">

        <p class=font1>프로그램 </p>
         <div class="feature-icon bg-secondary bg-gradient">
          <svg class="bi" width="0.5em" height="0.08em"></svg>
        </div><br>
        <p class=font6>FITENESS Lesson <br>
        						FILATES Lesson <br>
        						GX lesson </p>
 
      </div>
    </div>
  </div>

	<div class="container px-4 py-5" id="featured-3">
    
   		<p class=font1> 오시는 길 </p>
   		<div class="feature-icon bg-secondary bg-gradient">
          <svg class="bi" width="0.5em" height="0.08em"></svg>
   	</div>
   		
   	</div>	
		<div class="container">
			<div class="text-center">
			<br><img src="./resources/image/Location12.png"  class="img-fluid" >
		</div></div>
			<div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
      <div class="feature col">
        <p class=font1 >위치</p>
         <div class="feature-icon bg-secondary bg-gradient">
          <svg class="bi" width="0.5em" height="0.08em"><use xlink:href="#collection"/></svg>
        </div><br>
        <p class=font6>서울시 강남구 테헤란로 142 아크플레이스 5층 <br> 
        						역삼역 3번출구에서 28m에 위치 </p>
        						
     
      </div>
      <div class="feature col">
     
        <p class=font1>주차 정보</p>
         <div class="feature-icon bg-secondary bg-gradient">
          <svg class="bi" width="0.5em" height="0.08em"><use xlink:href="#people-circle"/></svg>
        </div><br>
        <p class=font6> [방문객] 주차 30분 무료<br>
        							[회원] 주차 무료 </p>
			

		</div>
		</div>
		</div>
		   <jsp:include page="footer.jsp" />

</body>
</html>