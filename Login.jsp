<%-- 
    Document   : Login
    Created on : Nov 19, 2021, 4:30:57 PM
    Author     : Koby
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Please Fill In The Following Fields To Login</h1>
        <form action="/action_page.php">
        <fieldset>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username"><br><br>
        <label for="password">Password:</label>
        <input type="text" id="password" name="password"><br><br>
        <input type="submit" value="Submit">
        </fieldset>
    
    </body>
</html>
