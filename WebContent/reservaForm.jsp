<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reseva</title>
</head>
<body>
 	<form action="./SalvarReserva" method="post">
 		<input name="id" type="hidden" value="${Reserva.id}"> 
 		Objetivo: <input type="text" name="objetivo" value="${Reserva.objetivo }"> <br>
 		Descrição: <input type="text" name="descricao reserva" value="${Reserva.descricao}"> <br>
 		Dia da Reserva: <input type="text" name="dia da reserva" value="${Reserva.diaReserva}"> <br>
 		Hora do inicio: <input type="text" name="hara do inicio" value="${Reserva.horaInicio}"> <br>
 		Hora do fim: <input type="text" name="hora do fim" value="${Reserva.horaFim}"> <br>
 		Laboratorio: <select name="laboratorio">
 			<option value="">Selecione</option>
 			<c:forEach var="laboratorio" items="${laboratorios}" >
 			<option value="${laboratorio.id}">${laboratorio.name}</option>
 			</c:forEach>
 			
 		
 		</select>
 		<button type="submit">Salvar</button>
 	</form>
</body>
</html>