package messageu;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Koby
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class message{
    public int messageID, senderID, chatID;
    public String senderName, message, timestamp;

    //remove message ID
    public message(int senderID, int chatID, String senderName, String message, String timestamp) {
        
        this.senderID = senderID;
        this.chatID = chatID;
        this.senderName = senderName;
        this.message = message;
        this.timestamp = timestamp;
    }

    
    public int getMessageID() {
        return messageID;
    }

    public void setMessageID(int messageID) {
        this.messageID = messageID;
    }

    public int getSenderID() {
        return senderID;
    }

    public void setSenderID(int senderID) {
        this.senderID = senderID;
    }

    public int getChatID() {
        return chatID;
    }

    public void setChatID(int chatID) {
        this.chatID = chatID;
    }

    public String getSenderName() {
        return senderName;
    }

    public void setSenderName(String senderName) {
        this.senderName = senderName;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp;
    }
    
    public void sendMessage(int senderID, int chatID, String senderName, String message, String timestamp)throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{
       

        //Input would come from JSP and call this function
        Connection connections =null;
        String databaseName = "";
        String url = "jdbc:mysql://localhost:3306/" +databaseName;
        
        //Put your workbench information in here
        String username = "root";
        String password = "PutYourPasswordHere";
        
        
        //CONNECTING TO DATABASE
        Class.forName("com.mysql.cj.jdbc.Driver").newInstance();  
        connections = DriverManager.getConnection(url,username,password);
        
        //MAKING CHANGES TO THE MESSAGE TABLE
        String query = "INSERT INTO `messageu`.`message` (`senderID`,`chatID`,`senderName`,`message`,`timestamp`)" + " VALUES ( ?, ?, ?, ?, ?);";
        
        PreparedStatement stmt = connections.prepareStatement(query);
        stmt = connections.prepareStatement(query);
        stmt.setInt(1, senderID);
        stmt.setInt(2, chatID);
        stmt.setString(3, senderName);
        stmt.setString(4, message);
        stmt.setString(5, timestamp);
        int status = stmt.executeUpdate();
            
            if(status != 0){
                System.out.println("Database was connected again");
            }
        }
    
}
