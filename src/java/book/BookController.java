/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package book;

public class BookController {
        String bookname;
        int id;
        String authorname;
        String isbn;
        String publication;
        String edition;
        String categoryname;
        int category_id;

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthorname() {
        return authorname;
    }

    public void setAuthorname(String authorname) {
        this.authorname = authorname;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getPublication() {
        return publication;
    }

    public void setPublication(String publication) {
        this.publication = publication;
    }

    public String getEdition() {
        return edition;
    }

    public void setEdition(String edition) {
        this.edition = edition;
    }

    public String getCategoryname() {
        return categoryname;
    }

    public void setCategoryname(String categoryname) {
        this.categoryname = categoryname;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public BookController() {
    }

    public BookController(String bookname, int id, String authorname, String isbn, String publication, String edition, String categoryname, int category_id) {
        this.bookname = bookname;
        this.id = id;
        this.authorname = authorname;
        this.isbn = isbn;
        this.publication = publication;
        this.edition = edition;
        this.categoryname = categoryname;
        this.category_id = category_id;
    }
        
}
 