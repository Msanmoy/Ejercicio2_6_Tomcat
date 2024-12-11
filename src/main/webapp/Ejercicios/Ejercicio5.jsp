<%--
  Created by IntelliJ IDEA.
  User: manuel
  Date: 11/12/24
  Time: 13:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio 5</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
<form method="post" action="../Respuestas/respuesta5.jsp">
    <label for="a">a:</label>
    <input type="number" id="a" name="a" step="any" required>

    <label for="b">b:</label>
    <input type="number" id="b" name="b" step="any" required>

    <label for="c">c:</label>
    <input type="number" id="c" name="c" step="any" required>

    <button type="submit">Calcular</button>
    <a href="../index.jsp">Inicio</a>
</form>
</body>
</html>
