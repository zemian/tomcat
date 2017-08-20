<%@ page import="java.sql.Connection" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="zemian.hello.Constants" %>
<%@ page import="zemian.hello.Utils" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Date" %>
<html>
<body>
<pre>
<%
    DataSource ds = Utils.getDataSource();
    try (Connection conn = ds.getConnection()) {
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM employees LIMIT 100");
        while (rs.next()) {
            String empNo = rs.getString("emp_no");
            Date birthDate = rs.getDate("birth_date");
            String firstName = rs.getString("first_name");
            String lastName = rs.getString("last_name");
            String gender = rs.getString("gender");
            Date hireDate = rs.getDate("hire_date");
            out.println(empNo + ", "
            + birthDate + ", "
            + firstName + ", "
            + lastName + ", "
            + gender + ", "
            + hireDate
            );
        }
        rs.close();
        stmt.close();
    }
%>
</pre>
</body>
</html>