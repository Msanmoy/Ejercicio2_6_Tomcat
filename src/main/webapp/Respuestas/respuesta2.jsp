<%--
  Created by IntelliJ IDEA.
  User: manuel
  Date: 11/12/24
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page import ="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Respuesta</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
<%
  String nombre = request.getParameter("nombre");
  String idioma = request.getParameter("idioma");
  String saludo = "";

  if (idioma != null) {
    if (idioma.equalsIgnoreCase("es")) {
      saludo = "Hola";
    } else if (idioma.equalsIgnoreCase("pt")) {
      saludo = "Olà";
    } else if (idioma.equalsIgnoreCase("en")) {
      saludo = "Hello";
    }
  }

  if (nombre != null && !nombre.isEmpty()) {
    out.println("<p>" + saludo + " " + nombre + "</p>");
  } else {
    out.println("<p>Por favor, introduce tu nombre</p>");
  }

  out.println("<a href='../Ejercicios/Ejercicio2.jsp'>Volver</a>");
%>

</body>
</html>
