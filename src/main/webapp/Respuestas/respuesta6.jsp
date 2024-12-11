<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: manuel
  Date: 11/12/24
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Respuesta 6</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
    <%
        int numero = Integer.parseInt(request.getParameter("numero"));
        List<Integer> lista = new ArrayList<>();
        for (int i = 1; i<=10; i++) {
            lista.add(numero*i);
        }

        out.println("<table><tr><th>Tabla de multiplicar de " + numero + "</th></tr><tr><th>Número</th><th>Multiplicado</th></tr><tr><td>" + numero + "</td><td>" + lista.getFirst() + "</td></tr><tr><td>" + numero + "</td><td>" + lista.get(1) + "</td></tr><tr><td>" + numero + "</td><td>" + lista.get(2) + "</td></tr><tr><td>" + numero + "</td><td>" + lista.get(3) + "</td></tr><tr><td>" + numero + "</td><td>" + lista.get(4) + "</td></tr><tr><td>" + numero + "</td><td>" + lista.get(5) + "</td></tr><tr><td>" + numero + "</td><td>" + lista.get(6) + "</td></tr><tr><td>" + numero + "</td><td>" + lista.get(7) + "</td></tr><tr><td>" + numero + "</td><td>" + lista.get(8) + "</td></tr><tr><td>" + numero + "</td><td>" + lista.get(9) + "</td></tr>");

        out.println("<a href='../Ejercicios/Ejercicio6.jsp'>Volver</a>");
    %>

</body>
</html>
