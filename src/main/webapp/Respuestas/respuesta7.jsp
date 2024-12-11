<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: manuel
  Date: 11/12/24
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Respuesta 7</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
<%
  String mesStr = request.getParameter("mes");
  Integer año = Integer.valueOf(request.getParameter("año"));

  String[] meses = {"enero", "febrero", "marzo", "abril", "mayo", "junio",
          "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"};

  Integer mes = null;
  for (int i = 0; i < meses.length; i++) {
    if (mesStr.trim().toLowerCase().equals(meses[i])) {
      mes = i;
      break;
    }
  }

  if (mes != null && mes >= 0 && mes <= 11) {
    Calendar calendar = Calendar.getInstance();
    calendar.setFirstDayOfWeek(Calendar.MONDAY);
    calendar.set(año, mes, 1);

    int primerDia = calendar.get(Calendar.DAY_OF_WEEK);
    int espaciosVacios = (primerDia == Calendar.SUNDAY) ? 6 : primerDia - Calendar.MONDAY;

    int diasMes = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
    String[] diasSemana = {"L", "M", "X", "J", "V", "S", "D"};
%>
<h3>Calendario de <%= mesStr.substring(0, 1).toUpperCase() + mesStr.substring(1) %> de <%= año %></h3>
<table>
  <tr>
    <% for (String dia : diasSemana) { %>
    <th><%= dia %></th>
    <% } %>
  </tr>
  <tr>
    <%
      for (int i = 0; i < espaciosVacios; i++) {
        out.print("<td></td>");
      }

      for (int dia = 1; dia <= diasMes; dia++) {
        out.print("<td>" + dia + "</td>");
        if ((espaciosVacios + dia) % 7 == 0) {
          out.print("</tr><tr>");
        }
      }

      int sobrantes = (espaciosVacios + diasMes) % 7;
      for (int i = 0; i < (7 - sobrantes) % 7; i++) {
        out.print("<td></td>");
      }
    %>
  </tr>
</table>
<% } else { %>
<p>El mes introducido no es válido</p>
<% } %>

<a href="../Ejercicios/Ejercicio7.jsp">Volver</a>
</body>
</html>
