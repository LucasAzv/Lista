<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista 10</title>
</head>
<body>
<h1>Bem vindo ao cadastro de dados</h1>

<form action="sessao.jsp" method="get">
<p>Informe o seu login:</p>
<input type="text" name="login">
<br>
<p>Infome a sua senha:</p>
<input type="password" name="senha">
<br>
<h2>Informe os seus dados pessoais:</h2>
<br>
<p>Informe o seu nome:</p>
<input type="text" name="nome">
<br>
<p>Informe a sua idade:</p>
<input type="number" name="idade">
<br>
<h3>Infomações profissionais</h3>
C#<input type="checkbox" name="linguagens" value="c#">
Java<input type="checkbox" name="linguagens" value="java">
Python<input type="checkbox" name="linguagens" value="python">
<br>
<input type="submit" value="salvar">





</form>

</body>
</html>