package com.findit.findit.model;

public class Item {
    private int id;
    private String type;
    private String title;
    private String categoryName;
    private String userName;
    private String status;
    private String dateReported;

    public Item() {}
    public Item(int id, String type, String title, String categoryName, String userName, String status, String dateReported) {
        this.id = id;
        this.type = type;
        this.title = title;
        this.categoryName = categoryName;
        this.userName = userName;
        this.status = status;
        this.dateReported = dateReported;
    }

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getType() { return type; }
    public void setType(String type) { this.type = type; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getCategoryName() { return categoryName; }
    public void setCategoryName(String categoryName) { this.categoryName = categoryName; }
    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }
    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
    public String getDateReported() { return dateReported; }
    public void setDateReported(String dateReported) { this.dateReported = dateReported; }
}

