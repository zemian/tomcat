<%@ page import="java.security.CodeSource" %>
<html>
<body>
<pre>
<%
    String className = request.getParameter("class");
    if (className != null) {
        out.println("Searching class=" + className);
        Class<?> classObj = Thread.currentThread().getContextClassLoader().loadClass(className);
        out.println("Found " + classObj);
        CodeSource cs = classObj.getProtectionDomain().getCodeSource();
        if (cs != null) {
            out.println("Location: " + classObj.getProtectionDomain().getCodeSource().getLocation());
        } else {
            out.println("Location: not found.");
        }
    } else {
        out.println("URL parameter \"class\" not found.");
    }
%>
</pre>
</body>
</html>