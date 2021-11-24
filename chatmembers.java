package messageu;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Koby
 */
public class chatmembers {
    public int chatMembersID, chatID, userID;

    public chatmembers(int chatMembersID, int chatID, int userID) {
        this.chatMembersID = chatMembersID;
        this.chatID = chatID;
        this.userID = userID;
    }

    
    public int getChatMembersID() {
        return chatMembersID;
    }

    public void setChatMembersID(int chatMembersID) {
        this.chatMembersID = chatMembersID;
    }

    public int getChatID() {
        return chatID;
    }

    public void setChatID(int chatID) {
        this.chatID = chatID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }
    
    
}
