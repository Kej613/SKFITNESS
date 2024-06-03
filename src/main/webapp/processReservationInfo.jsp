<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.net.URLEncoder" %>
<%
		request.setCharacterEncoding("UTF-8");
		
		Cookie reservationId = new Cookie("reservation_reservationId", URLEncoder.encode(request.getParameter("reservationId"), "utf-8"));
		Cookie name = new Cookie("reservation_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
		Cookie reservationDate = new Cookie("reservation_reservationDate", URLEncoder.encode(request.getParameter("reservationDate"), "utf-8"));
		Cookie phonenumber = new Cookie("reservation_phonenumber", URLEncoder.encode(request.getParameter("phonenumber"), "utf-8"));
		
		
		reservationId.setMaxAge(24*60*60);
		name.setMaxAge(24*60*60);
		 phonenumber.setMaxAge(24*60*60);
		
		response.addCookie(reservationId);
		response.addCookie(name);
		response.addCookie(reservationDate);
		response.addCookie(phonenumber);

		
		response.sendRedirect("orderConfirmation.jsp");
	%>