<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="javax.servlet.http.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
int count = 0;
ServletContext context = request.getSession().getServletContext();

// Obtém o valor atual do contador de visitas
Integer visitaCount = (Integer) context.getAttribute("visitaCount");

// Incrementa o contador de visitas, se ele já existir
if (visitaCount != null) {
    count = visitaCount;
}
count++;

// Armazena o novo valor do contador de visitas no objeto ServletContext
context.setAttribute("visitaCount", count);
if(count > 3){
	 response.sendRedirect("excedido.jsp");
}
%>

<% 
HttpSession sessao = request.getSession();
String login = (String) session.getAttribute("login");
String senha = (String) session.getAttribute("senha");
String nome = (String) session.getAttribute("nome");
int idade = (Integer) session.getAttribute("idade");
String[] opcoes = (String[]) session.getAttribute("linguagens");
%>

<h1>Número de acessos: <%= count %></h1>
<a href="principal.jsp">Voltar</a> 

</body>
</html>