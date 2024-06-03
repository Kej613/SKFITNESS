<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Trainer" %>
<%@ page import = "dao.TrainerRepository"%>

<%
	String id = request.getParameter("id");
		if (id == null || id.trim().equals("")) {
			response.sendRedirect("trainers.jsp");
			return;
		}
		
		TrainerRepository dao = TrainerRepository.getInstance();
		
		Trainer trainer = dao.getTrainerById(id);
		
		if (trainer  == null) {
			response.sendRedirect("exceptionNoTrainerId.jsp");
		}
		
		ArrayList<Trainer> goodsList = dao.getAllTrainers();
			Trainer goods = new Trainer();
			for (int i =0; i < goodsList.size(); i++ ) {
				goods = goodsList.get(i);
				if(goods.getTrainerId().equals(id)) {
					break;
		}
	}
	
		ArrayList<Trainer> list = (ArrayList<Trainer>) session.getAttribute("reservationlist");
		if (list==null) {
			list = new ArrayList<Trainer>();
			session.setAttribute("reservationlist", list);
		}
		
		int cnt = 0;
		Trainer goodsQnt = new Trainer();
		
		for (int i= 0; i < list.size(); i++) {
				goodsQnt = list.get(i);
				if(goodsQnt.getTrainerId().equals(id)) {
					cnt++;
				int orderQuantity = goodsQnt.getQuantity() + 1; 
				goodsQnt.setQuantity(orderQuantity);
	}
	}
	
		if (cnt ==0) {
				goods.setQuantity(1);
				list.add(goods);
	}
	
	response.sendRedirect("trainer.jsp?id="+id);
%>