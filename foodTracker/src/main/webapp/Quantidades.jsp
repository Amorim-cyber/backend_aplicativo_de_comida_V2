<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.aplicativo.de.comida.services.Service"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
	Service service = new Service();
	String end = request.getParameter("endereco"); 
	Double dist = null;
	
	Integer total = null;
	if(end != null){
		dist = Double.parseDouble(request.getParameter("inlineRadioOptions").split("-")[1].replace(" km", ""));
		total = service.getQtdByAdrRange(end, dist);
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
</div>