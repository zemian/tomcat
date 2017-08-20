<%@ page import="java.sql.Connection" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="zemian.hello.Constants" %>
<html>
<body>
<pre>
<%
    Context initCtx = new InitialContext();
    Context envCtx = (Context) initCtx.lookup(Constants.JNDI_ROOT);
    DataSource ds = (DataSource)envCtx.lookup(Constants.JNDI_DATASOURCE);
    try (Connection conn = ds.getConnection()) {
        out.println("Got a DB conn=" + conn);
        out.println("DB Name=" + conn.getMetaData().getDatabaseProductName());
        out.println("DB Version=" + conn.getMetaData().getDatabaseProductVersion());
        out.println("DB DriverName=" + conn.getMetaData().getDriverName());
        out.println("DB DriverVersion=" + conn.getMetaData().getDriverVersion());
    }
%>
</pre>
</body>
</html>