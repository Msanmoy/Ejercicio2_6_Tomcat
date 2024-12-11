<%--
  Created by IntelliJ IDEA.
  User: manuel
  Date: 11/12/24
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Respuesta Ejer 3</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
  </head>
  <body>
  <%
    int num1 = Integer.parseInt(request.getParameter("nota1"));
    int num2 = Integer.parseInt(request.getParameter("nota2"));
    int num3 = Integer.parseInt(request.getParameter("nota3"));

    int respuesta = (num1 + num2 + num3) / 3;

    out.println("<p>La media es " + respuesta + "</p>");


    out.println("<a href='../Ejercicios/Ejercicio3.jsp'>Volver</a>");
  %>
  
  </body>
</html>
