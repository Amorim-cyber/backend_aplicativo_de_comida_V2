<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.aplicativo.de.comida.services.Service"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
	Service service = new Service();
	String end = request.getParameter("endereco"); 
	Double dist = null;
	
	Integer total = null;
	Integer rate1 = null;
	Integer rate2 = null;
	Integer rate3 = null;
	Integer rate4 = null;
	
	if(end != null){
		dist = Double.parseDouble(request.getParameter("inlineRadioOptions").split("-")[1].replace(" km", ""));
		total = service.getQtdByAdrRange(end, dist);
		rate1 = service.getQtdByAdrRangeRate(end, dist, "5.0");
		rate2 = service.getQtdByAdrRangeRate(end, dist, "4.5");
		rate3 = service.getQtdByAdrRangeRate(end, dist, "4.0");
		rate4 = service.getQtdByAdrRangeRate(end, dist, "3.5");
	}
		
	
%>

	<div class="container">
		<h1>Resultado</h1>
		<table class="table table-striped" >
			<tr>
				<th>Total Restaurantes</th>
			</tr>
			<c:if test="${not empty param.endereco}">
			<tr>
				<td><%= total %></td>
			</tr>
			</c:if>
		</table>
		<h1>Quantidade por rating</h1>
		<table class="table table-striped" >
			<tr>
				<th>5.0 - 4.5</th>
				<th>4.5 - 4.0</th>
				<th>4.0 - 3.5</th>
				<th>3.5 - 3.0</th>
			</tr>
			<c:if test="${not empty param.endereco}">
			<tr>
				<td><%= rate1 %></td>
				<td><%= rate2 %></td>
				<td><%= rate3 %></td>
				<td><%= rate4 %></td>
			</tr>
			</c:if>
		</table>
	</div>
