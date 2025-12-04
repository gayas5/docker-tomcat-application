<%@ page import="java.sql.*,jakarta.naming.*,jakarta.sql.*" %>
<html>
<body>
<h2>Tomcat + Docker + MySQL</h2>

<%
Context ctx = new InitialContext();
DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/MyDB");
Connection con = ds.getConnection();

Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("SELECT name FROM users");

while(rs.next()){
    out.println("<p>" + rs.getString("name") + "</p>");
}
con.close();
%>

</body>
</html>

