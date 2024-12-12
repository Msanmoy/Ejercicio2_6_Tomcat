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
  String a = request.getParameter("a");
  String b = request.getParameter("b");
  String c = request.getParameter("c");

  if (a != null && b != null && c != null) {
    try {
      BigDecimal A = new BigDecimal(a);
      BigDecimal B = new BigDecimal(b);
      BigDecimal C = new BigDecimal(c);

      if (A.compareTo(BigDecimal.ZERO) == 0) {
        out.println("<p>Error: 'a' no puede ser 0 en una ecuación de segundo grado.</p>");
      } else {
        MathContext mc = new MathContext(20, RoundingMode.HALF_UP);

        BigDecimal Cuadrado = B.pow(2, mc);
        BigDecimal cuatro = A.multiply(C, mc).multiply(new BigDecimal("4"), mc);
        BigDecimal disc = Cuadrado.subtract(cuatro, mc);

        if (disc.compareTo(BigDecimal.ZERO) < 0) {
          out.println("<p>No tiene raíces reales: el discriminante es negativo.</p>");
        } else {
          BigDecimal sqrtDiscriminant = new BigDecimal(Math.sqrt(disc.doubleValue()), mc);
          BigDecimal twoA = A.multiply(new BigDecimal("2"), mc);

          BigDecimal root1 = B.negate(mc).add(sqrtDiscriminant, mc).divide(twoA, mc);
          BigDecimal root2 = B.negate(mc).subtract(sqrtDiscriminant, mc).divide(twoA, mc);

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
