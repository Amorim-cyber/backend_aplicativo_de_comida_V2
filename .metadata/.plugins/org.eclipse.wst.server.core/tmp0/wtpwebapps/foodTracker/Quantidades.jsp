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
	
	Integer time1 = null;
	Integer time2 = null;
	Integer time3 = null;
	Integer time4 = null;
	
	if(end != null){
		dist = Double.parseDouble(request.getParameter("inlineRadioOptions").split("-")[1].replace(" km", ""));
		total = service.getQtdByAdrRange(end, dist);
		
		rate1 = service.getQtdByAdrRangeRate(end, dist, "5.0");
		rate2 = service.getQtdByAdrRangeRate(end, dist, "4.5");
		rate3 = service.getQtdByAdrRangeRate(end, dist, "4.0");
		rate4 = service.getQtdByAdrRangeRate(end, dist, "3.5");
		
		time1 = service.getQtdByAdrRangeTime(end, dist, 30);
		request.setAttribute("listaTime1",service.getListByAdrRangeTime(end, dist, 30));
		time2 = service.getQtdByAdrRangeTime(end, dist, 45);
		request.setAttribute("listaTime2",service.getListByAdrRangeTime(end, dist, 45));
		time3 = service.getQtdByAdrRangeTime(end, dist, 60);
		request.setAttribute("listaTime3",service.getListByAdrRangeTime(end, dist, 60));
		time4 = service.getQtdByAdrRangeTime(end, dist, 61);
		request.setAttribute("listaTime4",service.getListByAdrRangeTime(end, dist, 61));
		
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
				<th>5.0 - 4.5 estrelas</th>
				<th>4.5 - 4.0 estrelas</th>
				<th>4.0 - 3.5 estrelas</th>
				<th>3.5 - 3.0 estrelas</th>
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
		<h1>Quantidade por prazo</h1>
		<table class="table table-striped" >
			<tr>
				<th>15 - 30 min</th>
				<th>30 - 45 min</th>
				<th>45 - 60 min</th>
				<th>> 60 min</th>
			</tr>
			<c:if test="${not empty param.endereco}">
			<tr>
				<td>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#time1">
	  					<%= time1 %>
					</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#time2">
	  					<%= time2 %>
					</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#time3">
	  					<%= time3 %>
					</button>
				</td>
				<td>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#time4">
	  					<%= time4 %>
					</button>
				</td>
			</tr>
			</c:if>
		</table>
		
		<!-- Modals -->
		<div class="modal fade" id="time1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">Lista restaurantes</h5>
		      </div>
		      <div class="modal-body">
		      		<c:forEach var = "t1" items="${listaTime1}">
		      		<div class="card" style="margin-bottom: 5px;">
					  <div class="card-body">
					  	<img src="${t1.getSrcImg()}" class="img"></img>
					    <div class="details">
					    	<a href="${t1.getUrl()}" target="_blank">${t1.getName()}</a>
					    	<span>Rating: ${t1.getRate()} | Tipo: ${t1.getType()} | Distância: ${t1.getRange()} km | Prazo máx: ${t1.getTime()} min | Frete: ${t1.getShipment()} | ${t1.getDiscount()}
					    	</span>
					    </div>
					  </div>
					</div>
		      		</c:forEach>	
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		<div class="modal fade" id="time2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">Lista restaurantes</h5>
		      </div>
		      <div class="modal-body">
					<c:forEach var = "t2" items="${listaTime2}">
		      		<div class="card" style="margin-bottom: 5px;">
					  <div class="card-body">
					  	<img src="${t2.getSrcImg()}" class="img"></img>
					    <div class="details">
					    	<a href="${t2.getUrl()}" target="_blank">${t2.getName()}</a>
					    	<span>Rating: ${t2.getRate()} | Tipo: ${t2.getType()} | Distância: ${t2.getRange()} km | Prazo máx: ${t2.getTime()} min | Frete: ${t2.getShipment()} | ${t2.getDiscount()}
					    	</span>
					    </div>
					  </div>
					</div>
		      		</c:forEach>	
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		<div class="modal fade" id="time3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">Lista restaurantes</h5>
		      </div>
		      <div class="modal-body">
					<c:forEach var = "t3" items="${listaTime3}">
		      		<div class="card" style="margin-bottom: 5px;">
					  <div class="card-body">
					  	<img src="${t3.getSrcImg()}" class="img"></img>
					    <div class="details">
					    	<a href="${t3.getUrl()}" target="_blank">${t3.getName()}</a>
					    	<span>Rating: ${t3.getRate()} | Tipo: ${t3.getType()} | Distância: ${t3.getRange()} km | Prazo máx: ${t3.getTime()} min | Frete: ${t3.getShipment()} | ${t3.getDiscount()}
					    	</span>
					    </div>
					  </div>
					</div>
		      		</c:forEach>	
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		<div class="modal fade" id="time4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-scrollable" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">Lista restaurantes</h5>
		      </div>
		      <div class="modal-body">
					<c:forEach var = "t4" items="${listaTime4}">
		      		<div class="card" style="margin-bottom: 5px;">
					  <div class="card-body">
					  	<img src="${t4.getSrcImg()}" class="img"></img>
					    <div class="details">
					    	<a href="${t4.getUrl()}" target="_blank">${t4.getName()}</a>
					    	<span>Rating: ${t4.getRate()} | Tipo: ${t4.getType()} | Distância: ${t4.getRange()} km | Prazo máx: ${t4.getTime()} min | Frete: ${t4.getShipment()} | ${t4.getDiscount()}
					    	</span>
					    </div>
					  </div>
					</div>
		      		</c:forEach>	
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
		      </div>
		    </div>
		  </div>
		</div>
		
	</div>
