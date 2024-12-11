<%--
  Created by IntelliJ IDEA.
  User: manuel
  Date: 11/12/24
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Respuesta 8</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
    <h1>Configuración del vehiculo</h1>
    <%
        String color = request.getParameter("color");
        String material = request.getParameter("material");

        if (color != null) {
            if (color.equalsIgnoreCase("bl")) {
                color = "blanco";
            } else if (color.equalsIgnoreCase("ng")) {
                color = "negro";
            } else if (color.equalsIgnoreCase("br")) {
                color = "berengena";
            }
            if (material != null) {
                if (material.equalsIgnoreCase("ma")) {
                    material = "madera";
                } else if (material.equalsIgnoreCase("cr")) {
                    material = "carbono";
                }
            }
        }




        out.println("<p><strong>Color: </strong>" + color +"</p>");
        out.println("<p><strong>Material: </strong>" + material +"</p>");
    %>

<a href="../Ejercicios/Ejercicio8.jsp">Volver</a>
</body>
</html>
