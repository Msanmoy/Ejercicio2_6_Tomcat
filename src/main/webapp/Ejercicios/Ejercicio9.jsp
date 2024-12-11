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
    <title>Ejercicio 9</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>

<h1>Tablero de Ajedrez</h1>
<%
    String alfil = "A";
    String caballo = "C";

    int filaAlfil = (int)(Math.random() * 8) +1;
    int columnaAlfil = (int)(Math.random() * 8);

    int filaCaballo;
    int columnaCaballo;

    do {
        filaCaballo = (int)(Math.random() * 8)+ 1;
        columnaCaballo = (int)(Math.random() * 8);
    } while (filaAlfil == filaCaballo && columnaAlfil == columnaCaballo);

%>
<table border="1">
    <th>
    <tr>
        <th></th>
        <%
            for (char columna = 'A'; columna <= 'H'; columna++) {
        %>
        <th><%= columna %></th>
        <% } %>
    </tr>
    </th>
    <tb>
    <%
        for (int fila = 8; fila > 0; fila--) {
    %>
    <tr>
        <td><%= 9 - fila %></td>
        <%
            for (int columna = 0; columna < 8; columna++) {
                String color;
                if ((fila + columna) % 2 == 0) {
                    color = "blanca";
                } else {
                    color = "negra";
                }
                String contenido = "";
                if (fila == filaAlfil && columna == columnaAlfil) {
                    contenido = alfil;
                } else if (fila == filaCaballo && columna == columnaCaballo) {
                    contenido = caballo;
                }
        %>
        <td><%= contenido %></td>

        <% } %>
    </tr>
    <% } %>
    </tb>
</table>

<a href="">Actualizar</a>
<a href="../index.jsp">Inicio</a>
</body>
</html>
