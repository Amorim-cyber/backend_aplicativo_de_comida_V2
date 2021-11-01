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
	<form action="quantidadeRestaurantes" method="post">
		<h3>TESTE API</h3>
		<div class="form-group">
			<label >Endereço</label>
			<select name="endereco" class="form-select" aria-label="Default select example">
  				<option selected> - </option>
  				<option value="1">Rua Desembargador Roberto Medeiros, 70</option>
			</select>
		</div>
		<div class="form-group">
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
			  <label class="form-check-label" for="inlineRadio1">0-1 km</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
			  <label class="form-check-label" for="inlineRadio2">1-2 km</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
			  <label class="form-check-label" for="inlineRadio3">2-3 km</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio4" value="option4">
			  <label class="form-check-label" for="inlineRadio3">3-4 km</label>
			</div>
		<br>
		<input type="submit" name="dist" value="todos"class="btn btn-primary">
	</form>
</div>



<%@ include file="Footer.jsp" %>
</body>
</html>