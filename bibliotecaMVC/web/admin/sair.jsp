<%-- 
    Document   : sair
    Created on : 23 de jun. de 2023, 12:29:37
    Author     : vilar
--%>

<%
    session.invalidate();
    response.sendRedirect("../index.jsp");
%>
