package com.thanhnd.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "contact")
public class Contact {

    @Id
    @Column(name = "contactId")
    private int contactId;
    
    @Column(name = "userId")
    private int userId;

    @Column(name = "name")
    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private String name;

    @Column(name = "phone")
    @Pattern(regexp = "([0-9]{1,11}){0,1}", message = "Enter a valid number")
    private String phone;

    @Column(name = "email")
    @Pattern(regexp = "(\\w+@\\w+([.]\\w+){1,2}){0,1}", message = "Enter a valid email")
    private String email;
    
    @Column(name = "address")
    private String address;
    
    @Column(name = "remark")
    private String remark;

    public int getContactId() {
        return contactId;
    }

    public void setContactId(int contactId) {
        this.contactId = contactId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

}
