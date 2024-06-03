<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import ="dto.Trainer" %>
<%@ page import="dao.TrainerRepository" %>

<%
		String id = request.getParameter("reservationId");
		if(id==null || id.trim().equals("")) {
			response.sendRedirect("reservation.jsp");
			return;
		}
		
		session.invalidate();
		
		response.sendRedirect("reservation.jsp");
	
%>