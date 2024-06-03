<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Trainer" %>
<%@ page import="dao.TrainerRepository"%>

<%
	String id = request.getParameter("id");
		if(id == null || id.trim().equals("")) {
		response.sendRedirect("trainers.jsp");
		return;
		}
		
		TrainerRepository dao = TrainerRepository.getInstance();
		
		Trainer trainer = dao.getTrainerById(id);
		
		if (trainer == null) {
		response.sendRedirect("exceptionNoTrainerId.jsp");
		}
		
		ArrayList<Trainer> reservationList = (ArrayList<Trainer>) session.getAttribute("reservationlist");
		Trainer goodsQnt = new Trainer();
		for(int i=0; i < reservationList.size(); i++) {
				goodsQnt = reservationList.get(i);
				if(goodsQnt.getTrainerId().equals(id)) {
				reservationList.remove(goodsQnt);
		}
		}
		
		response.sendRedirect("reservation.jsp");
%>