<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Reservas</title>
</head>
<body>
	<table border="1">
	 	<thead>
	 		<tr>
	 			<th>Laboratorio</th>
	 			<th>Dia da Reserva</th>
	 			<th>Hora de inicio</th>
	 			<th>Hora do final</th>
	 			<th>Objetivo</th>
	 			<th>Descrição</th>
	 			<th><a href="./SalvarReserva" >Nova reserva</a></th>
	 		</tr>
	 	</thead>
	 	<tbody>
	 		<c:forEach var="l" items="${laboratorios}">
	 		
	 		<tr>
	 			<td>${l.nome}</td>
	 			<td>${Reserva.diaReserva}</td>
	 			<td>${Reserva.horaInicio}</td>
	 			<td>${Reserva.horaFim}</td>
	 			<td>${Reserva.objetivo}</td>
	 			<td>${Reserva.descricao}</td>
	 		</tr>
	 		</c:forEach>
	 	</tbody>
	 	
	</table>
</body>
</html>