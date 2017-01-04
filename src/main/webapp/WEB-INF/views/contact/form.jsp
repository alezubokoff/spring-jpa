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
		<form action='<c:url value="/contact/save" />' method="post">
			<div class="form-group">
				<label for="name">Nome</label>
				<input type="text" name="name" id="name" class="form-control" placeholder="Nome" />
			</div>
			<div class="form-group">
				<label for="email">Email</label> 
				<input type="text" name="email" id="email" class="form-control" placeholder="Email" />
			</div>
			<div class="form-group">
				<label for="phone">Telefone</label>
				<input type="text" name="phone" id="phone" class="form-control" placeholder="Telefone" />
			</div>
			<div class="form-group">
				<label for="cell">Celular</label>
				<input type="text" name="cell" id="cell" class="form-control" placeholder="Celular" />
			</div>
			
			<button class="btn btn-default">Salvar</button>
		</form>
	</div>

</body>
</html>