<%@page import="com.itwill.shopping.cartItem.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="login_check.jspf"%>
<%
// GET 방식 METHOD 차단
	if(request.getMethod().equalsIgnoreCase("GET")){
		response.sendRedirect("product_list.jsp");
		return;
	}

// 파라미터 받기
	String c_item_qty_Str = request.getParameter("c_item_qty");
	String p_no_Str = request.getParameter("p_no");
	
	CartService cartService = new CartService();
	cartService.addCart(sM_id, Integer.parseInt(p_no_Str), Integer.parseInt(c_item_qty_Str));
	response.sendRedirect("cart_view.jsp");
	
	%>