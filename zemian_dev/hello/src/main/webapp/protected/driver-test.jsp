<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html>
<body>
<pre>
<%
    String url = "jdbc:postgresql://localhost/employees?user=test";
    Class.forName("org.postgresql.Driver");
    try (Connection conn = DriverManager.getConnection(url)) {
        out.println("Got a DB conn=" + conn);
        out.println("DB Name" + conn.getMetaData().getDatabaseProductName());
        out.println("DB Version" + conn.getMetaData().getDatabaseProductVersion());
        out.println("DB DriverName" + conn.getMetaData().getDriverName());
        out.println("DB DriverVersion" + conn.getMetaData().getDriverVersion());
    }
%>
</pre>
</body>
</html>