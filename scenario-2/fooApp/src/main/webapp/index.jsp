<%@ page import="java.util.Map" %>
<html>
<body>
<h2>Logging Application ONE</h2>
<%
    Map<String, String> env = System.getenv();
%>
<p> <%= env.get("MESSAGE") %>  </p>
</body>
</html>
