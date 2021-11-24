<%-- 
    Document   : CreateAccount
    Created on : Nov 19, 2021, 4:31:11 PM
    Author     : Koby
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Please Enter Into The Following Fields To Create A Account</h1>
        <form action="/action_page.php">
        <fieldset>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username"><br><br>
        <label for="password">Password:</label>
        <input type="text" id="password" name="password"><br><br>
        <label for="username">Screen Name:</label>
        <input type="text" id="screenname" name="screenname"><br><br>
        <input type="submit" value="Submit">
        </fieldset>
    </body>
</html>
