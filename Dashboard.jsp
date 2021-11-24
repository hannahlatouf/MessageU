<%-- 
    Document   : Dashboard
    Created on : Nov 22, 2021, 2:20:35 PM
    Author     : Koby
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import ="messageu.message" %>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DASHBOARD</title>
    </head>
    <body>
        <% 
        Connection connections =null;
        String databaseName = "";
        String url = "jdbc:mysql://localhost:3306/" +databaseName;
        //Put your workbench info in here
        String username = "root";
        String password = "MayShi#02";
        
        %>
       
        <h1>DASHBOARD</h1>
        
        
 <%
        try{
        
        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();  
        connections = DriverManager.getConnection(url,username,password);
        String sql = "Select * FROM messageu.chat";
        PreparedStatement stmt = connections.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        if(rs.next() == false){
            out.println("No records");
        }
        else{ %>
        <div align="center">
            <h2>Chats</h2>
            <table border="1" cellpadding="5">
                <tr>
                    <th>chat ID</th>
                    <th>chat Name</th>
                </tr> <%
                    do{ %>
                    <tr>
                        <td><%= rs.getString(1) %></td>
                        <td><%= rs.getString(2) %></td> 
                    </tr> <%
                    }
                    while(rs.next()); %>
            </table> <%
        }
        }
        catch(Exception e){
            e.getStackTrace();
        }
        %>
        
        
    
    
    
    
        <h2>Contacts</h2>
 <%
        try{
        
        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();  
        connections = DriverManager.getConnection(url,username,password);
        String sql = "Select * FROM messageu.userprofile";
        PreparedStatement stmt = connections.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        if(rs.next() == false){
            out.println("No records");
        }
        else{ %>
        <div align="center">
            <table border="1" cellpadding="5">
                <tr>
                    <th>User ID</th>
                    <th>Screen Name</th>
                    <th>User Bio</th>
                </tr> <%
                    do{ %>
                    <tr>
                        <td><%= rs.getString(1) %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                    </tr> <%
                    }
                    while(rs.next()); %>
            </table> <%
        }
        }
        catch(Exception e){
            e.getStackTrace();
        }
        %>
        
        
        <h2>Messages</h2>
 <%
        try{
        
        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();  
        connections = DriverManager.getConnection(url,username,password);
        String sql = "Select * FROM messageu.message";
        PreparedStatement stmt = connections.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();
        if(rs.next() == false){
            out.println("No records");
        }
        else{ %>
        <div align="center">
            <table border="1" cellpadding="5">
                <tr>
                    <th>Message ID</th>
                    <th>Sender Name</th>
                    <th>Message</th>
                    <th>Sender ID</th>
                    <th>Chat ID</th>
                    <th>Time Stamp</th>
                </tr> <%
                    do{ %>
                    <tr>
                        <td><%= rs.getString(1) %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><%= rs.getString(4) %></td>
                        <td><%= rs.getString(5) %></td>
                        <td><%= rs.getString(6) %></td>
                    </tr> <%
                    }
                    while(rs.next()); %>
            </table> <%
        }
        }
        catch(Exception e){
            e.getStackTrace();
        }
        %>
        <h2>For Testing Message Input </h2>
        <h3>Please Fill In The Following Fields To Send A Message</h3>
        <form name="sendingMessage" method="post" action="sendingMessage">
            <fieldset>
        <table border="1" cellpadding="5">
                <tr>
                    <th>Message ID</th>
                    <th>Sender Name</th>
                    <th>Message</th>
                    <th>Sender ID</th>
                    <th>Chat ID</th>
                    <th>Time Stamp</th>
                </tr>
                <tr>
                    <td><label for="messageID">Message ID:</label> 
                    <input type="number" id="messageID" name="messageID"><br><br></td>
                    
                    <td><label for="senderName">Sender Name:</label>
                    <input type="text" id="senderName" name="senderName"><br><br></td>
                    
                    <td><label for="message">Message:</label>
                    <input type="text" id="message" name="message"><br><br></td>
                    
                    <td><label for="senderID">Sender ID:</label>
                    <input type="number" id="senderID" name="senderID"><br><br></td>
                    
                    <td><label for="chatID">Chat ID:</label>
                    <input type="number" id="chatID" name="chatID"><br><br></td>
                    
                    <td><label for="timestamp">Time Stamp:</label>
                    <input type="text" id="timestamp" name="timestamp"><br><br></td>
                </tr>
        </table>
        <input type="submit" value="message">
        </fieldset>
</c:forEach>
    </body>
</html>
