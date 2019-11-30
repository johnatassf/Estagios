<%@page import="br.com.fatecpg.jdbc.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% try{
            Connection con = new ConnectionFactory().getConnection();
            %> <h1>Conectado </h1><%
        }catch(Exception ex){
            
            %> <h1>Erro Connection </h1><%
        }
            %>
        <h1>Hello World!</h1>
    </body>
</html>
