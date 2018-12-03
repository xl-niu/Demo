package com.zq.pojo;

/**
 * Created by 13926 on 2017/7/18.
 */
public class User {
    private String USER_ID;
    private String USERNAME;
    private Integer PASSWORD;
    private String Email;
    private String Phone;

    public String getUSER_ID() {
        return USER_ID;
    }

    public void setUSER_ID(String USER_ID) {
        this.USER_ID = USER_ID;
    }

    public String getUSERNAME() {
        return USERNAME;
    }

    public void setUSERNAME(String USERNAME) {
        this.USERNAME = USERNAME;
    }

    public Integer getPASSWORD() {
        return PASSWORD;
    }

    public void setPASSWORD(Integer PASSWORD) {
        this.PASSWORD = PASSWORD;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }
}