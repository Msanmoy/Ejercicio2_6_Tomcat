<%--
  Created by IntelliJ IDEA.
  User: manuel
  Date: 5/12/24
  Time: 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Ejercicio2</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
    <form method="post" action="../Respuestas/respuesta2.jsp">
        <label for="nombre">Introduce tu nombre:</label>
        <br>
        <input type="text" id="nombre" name="nombre">
        <br>
        <label for="idioma">Idioma:</label>

        <select id="idioma" name="idioma">
            <option value="es">Español</option>
            <option value="pt">Portugués</option>
            <option value="en">Inglés</option>
        </select>
        <br>
        <input type="submit" onclick="validarIdioma()" value="Enviar">
        <script src="../js/Ejercicio2.js"></script>
        <a href="../index.jsp">Inicio</a>
    </form>

</body>
</html>
