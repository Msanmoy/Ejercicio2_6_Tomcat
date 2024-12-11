<%--
  Created by IntelliJ IDEA.
  User: manuel
  Date: 11/12/24
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ejercicio3</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
  <form method="post" action="../Respuestas/respuesta3.jsp">
    <label for="nota1">Introduce la primera nota: </label>
    <input type="number" id="nota1" name="nota1"> <br>
    <label for="nota2">Introduce la segunda nota: </label>
    <input type="number" id="nota2" name="nota2"> <br>
    <label for="nota3">Introduce la tercera nota: </label>
    <input type="number" id="nota3" name="nota3"> <br>

    <input type="submit" value="Enviar">
    <a href="../index.jsp">Inicio</a>


  </form>

</body>
</html>
