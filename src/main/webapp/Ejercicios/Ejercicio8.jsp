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
    <title>Ejercicio 8</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
<h1>Configurador de Vehiculos marca: Manuel Sánchez</h1>

<form method="post" action="../Respuestas/respuesta8.jsp">
<label for="color">Selecciona el color:</label>
  <select id="color" name="color">
    <option value="bl">Blanco</option>
    <option value="ng">Negro</option>
    <option value="br">Berenjena</option>
  </select>
  <br>
  <label for="material">Selecciona el material de las moldaduras:</label>
  <select id="material" name="material">
    <option value="ma">Madera</option>
    <option value="cr">Carbono</option>
  </select>
  <br>
  <input type="submit" value="Enviar">

</form>




<a href="../index.jsp">Inicio</a>
</body>
</html>
