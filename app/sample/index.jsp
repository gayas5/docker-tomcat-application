<%@ page import="java.sql.*,jakarta.naming.*,jakarta.sql.*" %>
<html>
<body>
<h2>Tomcat 11 + Java 17 + Docker</h2>

<%
Context ctx = new InitialContext();
DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/MyDB");
Connection con = ds.getConnection();

Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT name FROM users");

while (rs.next()) {
    out.println("<p>" + rs.getString("name") + "</p>");
}

con.close();
%>

</body>
</html>
