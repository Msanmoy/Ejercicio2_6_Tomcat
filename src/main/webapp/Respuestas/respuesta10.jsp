<%--
  Created by IntelliJ IDEA.
  User: manup
  Date: 11/12/2024
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Respuesta 10</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
    <h1>Aquí tiene su tarrina de helado</h1>

    <%
        String chocolateStr = request.getParameter("ch");
        String fresaStr = request.getParameter("fr");
        String vainillaStr = request.getParameter("va");

        int chocolate = 0, fresa = 0, vainilla = 0;
        boolean comprobar = true;

        if (chocolateStr != null && !chocolateStr.isEmpty() && chocolateStr.matches("\\d+")) {
            chocolate = Integer.parseInt(chocolateStr);
        } else {
    %>
    <%
            comprobar = false;
        }

        if (fresaStr != null && !fresaStr.isEmpty() && fresaStr.matches("\\d+")) {
            fresa = Integer.parseInt(fresaStr);
        } else {
    %>
    <%
            comprobar = false;
        }

        if (vainillaStr != null && !vainillaStr.isEmpty() && vainillaStr.matches("\\d+")) {
            vainilla = Integer.parseInt(vainillaStr);
        } else {
    %>
    <%
            comprobar = false;
        }

        if (comprobar && (chocolate < 0 || chocolate > 100 || fresa < 0 || fresa > 100 || vainilla < 0 || vainilla > 100)) {
    %>
    <span>El porcentaje no está entre 0 y 100</span>
    <%
            comprobar = false;
        }

        if (comprobar && (chocolate + fresa + vainilla > 100)) {
    %>
    <span>La suma de todos los porcentajes tiene que ser menor o igual a 100</span>

    <%
            comprobar = false;
        }

        if (comprobar) {
    %>

    <div style="border: 2px solid #000; width: 300px; height: 100px; position: relative;">
        <% if (chocolate > 0) { %>
        <div style="background-color: brown; height: <%= chocolate %>px; width: 100%; position: absolute; top: 0;">
            <p style="color: white; margin: 0; text-align: center;">Chocolate: <%= chocolate %>%</p>
        </div>
        <% } %>

        <% if (fresa > 0) { %>
        <div style="background-color: pink; height: <%= fresa %>px; width: 100%; position: absolute; top: <%= chocolate %>px;">
            <p style="color: white; margin: 0; text-align: center;">Fresa: <%= fresa %>%</p>
        </div>
        <% } %>

        <% if (vainilla > 0) { %>
        <div style="background-color: beige; height: <%= vainilla %>px; width: 100%; position: absolute; top: <%= (chocolate + fresa) %>px;">
            <p style="text-align: center; color: black; margin: 0;">Vainilla: <%= vainilla %>%</p>
        </div>
        <% } %>
    </div>

    <% } %>

    <br>

  <a href="../Ejercicios/Ejercicio10.jsp">Volver</a>
</body>
</html>
