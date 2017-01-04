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
	<div class="container">

		<form action='<c:url value="/user/login" />' method="post">
			<div class="col-md-4" style="margin-top: 100px;">
				<div ${not empty userMessage ? "class='alert alert-danger'" : "" }>
					<c:out value="${not empty userMessage ? userMessage : '' }" />
				</div>
				<div class="form-group">
					<label for="email">Email</label> 
					<input type="text" name="email"
						id="email" class="form-control" placeholder="Entre com seu email" />
				</div>
				<div class="form-group">
					<label for="password">Senha</label> 
					<input type="password"
						name="password" id="password" class="form-control"
						placeholder="Senha" />
				</div>
				<button class="btn btn-default">Entrar</button>
				&nbsp; <a href="user/new" class="btn btn-link">Criar uma conta</a>
			</div>
		</form>

	</div>
</body>
</html>