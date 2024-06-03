<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date" %>
<%
		String sessionId = (String) session.getAttribute("sessionId");%>

<html>
<head>
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<title>Welcome</title>

    <!-- Bootstrap core CSS -->
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>		
		<nav class = "navbar navbar-#000000 bg-#000000" style="background-color:#000000;">
		<div class = "container-fluid">
			<div class = "navbar-header" style="background-color:#000000;">
				<a  class="nav-link px-2 text-white"  href =" ./welcome.jsp" style="font-size:20px;" >SK FITNESS</a>
			</div>
			
			
			<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0"  >
          <li><a href="./Intro.jsp" class="nav-link px-2 text-white" style="margin-right:15px;">ABOUT  </a></li>
          <li><a href="./trainers.jsp" class="nav-link px-2 text-white" style="margin-right:15px;">TRAINERS  </a></li>
          <li><a href="./Fitness.jsp" class="nav-link px-2 text-white" style="margin-right:15px;">FITNESS  </a></li>
           <li><a href="./Pilates.jsp" class="nav-link px-2 text-white" style="margin-right:15px;">PILATES </a></li>
           <li><a href="./Facility.jsp" class="nav-link px-2 text-white" style="margin-right:15px;" >FACILITY  </a></li>
         
         
            <c:choose>
        			<c:when test="${empty sessionId}">
        			</c:when>
        			 <c:otherwise> 		
        	 <li class="nav-item"><a class="nav-link px-2 text-white" style="margin-right:15px;" href="<c:url value="./reservation.jsp"/>">MY RESERVATION</a></li>
            <li class="nav-item"><a class="nav-link px-2 text-white" style="margin-right:15px;" href="<c:url value="/BoardListAction.do?pageNum=1"/>">BOARD</a></li>
            </c:otherwise>
        		  </c:choose>
        </ul>
        
        <div class="text-end">
        	<c:choose>
        			<c:when test="${empty sessionId}">

       <a href="<c:url value="loginMember.jsp"/>" button type="button" class="btn btn-outline-light me-2" >Login</a></button>
         <a href="<c:url value="addMember.jsp"/>" button type="button" class="btn btn-outline-light me-2">Sign-up</a></button>
          </c:when>
          <c:otherwise> 		
            
          	<a href="<c:url value="logoutMember.jsp"/>" button type="button" class="btn btn-outline-light me-2" >Logout</a></button>
        	<a href="<c:url value="updateMember.jsp"/>" button type="button" class="btn btn-outline-light me-2">Edit</a></button>
        		  </c:otherwise>
        		  </c:choose>
        </div>
       </div>
	</nav>
	
	 <script src="/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	</body>
</html>
	
	
