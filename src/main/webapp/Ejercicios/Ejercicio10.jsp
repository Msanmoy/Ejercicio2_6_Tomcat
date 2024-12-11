<%--
  Created by IntelliJ IDEA.
  User: manuel
  Date: 11/12/24
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 10</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
<h1>Máquina de helados</h1>
<p>Seleccione los porcentajes para preparar un helado a su gusto</p>
<form method="post" action="../Respuestas/respuesta10.jsp" onsubmit="validar()">
    <label for="ch">Chocolate: </label>
    <input type="text" id="ch" name="ch" min="0" max="100">

    <label for="fr">Fresa: </label>
    <input type="text" id="fr" name="fr" min="0" max="100">

    <label for="va">Vainilla: </label>
    <input type="text" id="va" name="va" min="0" max="100">

    <input type="submit" value="Generar helado">
</form>

<script src="../js/Ejercicio10.js"></script>




<a href="../index.jsp">Inicio</a>
</body>
</html>
