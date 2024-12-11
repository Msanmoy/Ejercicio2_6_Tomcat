<%--
  Created by IntelliJ IDEA.
  User: manuel
  Date: 11/12/24
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Respuesta 4</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
<%
  double dolares = Double.parseDouble(request.getParameter("dolar"));

  double euros = 0.95 * dolares;

  out.println("<p>" + dolares + "$ es igual a " + euros + "€</p>");


  out.println("<a href='../Ejercicios/Ejercicio4.jsp'>Volver</a>");
%>

</body>
</html>
