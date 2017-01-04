<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>
	<div class="container-fluid"
		style="background-color: #403da5; height: 30px;"></div>
	<div class="container">
		<div class="col-md-8">a</div>
		<div class="col-md-4" style="text-align: right;">
			Seja bem vindo <b>${userLogged.name }</b>. <a
				href='<c:url value="/user/logout" />' class="btn btn-default">Sair</a>
		</div>
	</div>

	<div class="container">
		<h2>Lista de contatos</h2>
		
		<a href='<c:url value="/contact/new" />' class="btn btn-default">Adicionar contato</a>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Código</th>
					<th>Nome</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${contatos }" var="contato">
					<tr>
						<td>${contato.id }</td>
						<td>${contato.name }</td>
						<td>${contato.email }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>