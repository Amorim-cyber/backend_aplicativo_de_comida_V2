<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Food Tracker</title>
<%@ include file="Header.jsp" %>
</head>
<body>


<div class="container">
	<form action="Main.jsp" method="get">
		<h3>TESTE API</h3>
		<div class="form-group">
			<label >Endereço</label>
			<select name="endereco" class="form-select" aria-label="Default select example">
  				<option selected> - </option>
  				<option value="Av. Pres. Castelo Branco, 2836">Av. Pres. Castelo Branco, 2836</option>
  				<option value="R. Barão de Aratanha, 10">R. Barão de Aratanha, 10</option>
  				<option value="Rua dos Guajajaras, s/n">Rua dos Guajajaras, s/n</option>
			</select>
		</div>
		<div class="form-group">
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="0-1 km">
			  <label class="form-check-label" for="inlineRadio1">0-1 km</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="1-2 km">
			  <label class="form-check-label" for="inlineRadio2">1-2 km</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="2-3 km">
			  <label class="form-check-label" for="inlineRadio3">2-3 km</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio4" value="3-4 km">
			  <label class="form-check-label" for="inlineRadio3">3-4 km</label>
			</div>
		</div>
		<br>
		<div class="buttons">
			<input type="submit" name="tipo" value="Todos" class="btn btn-primary">
			<input type="submit" name="tipo" value="Pizza" class="btn btn-primary">
			<input type="submit" name="tipo" value="Lanches" class="btn btn-primary">
			<input type="submit" name="tipo" value="Japonesa" class="btn btn-primary">
		</div>
		
	</form>
	<%@ include file="Quantidades.jsp" %>
</div>



<%@ include file="Footer.jsp" %>
</body>
</html>