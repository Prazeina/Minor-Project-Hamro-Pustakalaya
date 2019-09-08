/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.get.set;

/**
 *
 * @author DELL
 */
public class UserHistoryModel {

    int userId;

   
    String BookName;
    String BorrowDate;
    String RenewDate;
    int Fine;
    String ReturnDate;
    
     public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getBookName() {
        return BookName;
    }

    public void setBookName(String BookName) {
        this.BookName = BookName;
    }

    public String getBorrowDate() {
        return BorrowDate;
    }

    public void setBorrowDate(String BorrowDate) {
        this.BorrowDate = BorrowDate;
    }

    public String getRenewDate() {
        return RenewDate;
    }

    public void setRenewDate(String RenewDate) {
        this.RenewDate = RenewDate;
    }

    public int getFine() {
        return Fine;
    }

    public void setFine(int Fine) {
        this.Fine = Fine;
    }

    public String getReturnDate() {
        return ReturnDate;
    }

    public void setReturnDate(String ReturnDate) {
        this.ReturnDate = ReturnDate;
    }
    
    
    

}
