package model;

import java.time.LocalDate;

public class _ListOfPost {
    private int id_post;
    private String title;
    private String content;
    private String author;
    private LocalDate date_created;
    private String category;
    private boolean post_status;

    public _ListOfPost(int id_post, String title, String content, String author, LocalDate date_created, String category, boolean post_status) {
        this.id_post = id_post;
        this.title = title;
        this.content = content;
        this.author = author;
        this.date_created = date_created;
        this.category = category;
        this.post_status = post_status;
    }

    public _ListOfPost(int id_post, String title, String content, String author, LocalDate date_created, String category) {
        this.id_post = id_post;
        this.title = title;
        this.content = content;
        this.author = author;
        this.date_created = date_created;
        this.category = category;
    }

    public int getId_post() {
        return id_post;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public String getAuthor() {
        return author;
    }

    public LocalDate getDate_created() {
        return date_created;
    }

    public String getCategory() {
        return category;
    }

    public boolean isPost_status() {
        return post_status;
    }

    public void setPost_status(boolean post_status) {
        this.post_status = post_status;
    }
}
