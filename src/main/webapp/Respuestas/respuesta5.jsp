<%@ page import="java.math.BigDecimal" %>
<%@ page import="java.math.MathContext" %>
<%@ page import="java.math.RoundingMode" %><%--
  Created by IntelliJ IDEA.
  User: manuel
  Date: 11/12/24
  Time: 13:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Respuesta 5</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
<%
  String aStr = request.getParameter("a");
  String bStr = request.getParameter("b");
  String cStr = request.getParameter("c");

  if (aStr != null && bStr != null && cStr != null) {
    try {
      BigDecimal a = new BigDecimal(aStr);
      BigDecimal b = new BigDecimal(bStr);
      BigDecimal c = new BigDecimal(cStr);

      if (a.compareTo(BigDecimal.ZERO) == 0) {
        out.println("<p>Error: 'a' no puede ser 0 en una ecuación de segundo grado.</p>");
      } else {
        MathContext mc = new MathContext(20, RoundingMode.HALF_UP);

        BigDecimal bCuadrado = b.pow(2, mc);
        BigDecimal cuatroAC = a.multiply(c, mc).multiply(new BigDecimal("4"), mc);
        BigDecimal discriminante = bCuadrado.subtract(cuatroAC, mc);

        if (discriminante.compareTo(BigDecimal.ZERO) < 0) {
          out.println("<p>No tiene raíces reales: el discriminante es negativo.</p>");
        } else {
          BigDecimal sqrtDiscriminant = new BigDecimal(Math.sqrt(discriminante.doubleValue()), mc);
          BigDecimal twoA = a.multiply(new BigDecimal("2"), mc);

          BigDecimal root1 = b.negate(mc).add(sqrtDiscriminant, mc).divide(twoA, mc);
          BigDecimal root2 = b.negate(mc).subtract(sqrtDiscriminant, mc).divide(twoA, mc);

          out.println("<p>Las raíces de la ecuación son:</p>");
          out.println("<ul>");
          out.println("<li>x1 = " + root1 + "</li>");
          out.println("<li>x2 = " + root2 + "</li>");
          out.println("</ul>");
        }
      }
    } catch (Exception e) {
      out.println("<p>Error: Entrada inválida. Por favor, asegúrate de introducir números válidos.</p>");
    }
  }

  out.println("<a href='../Ejercicios/Ejercicio5.jsp'>Volver</a>");
%>


</body>
</html>
