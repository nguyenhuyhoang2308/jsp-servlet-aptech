/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lesson5.modals;

import java.io.Serializable;

/**
 *
 * @author Asus
 */
public class Student implements Serializable {
    String rollno, fullname, gender, email, address;

    public Student() {
    }

    public Student(String rollno, String fullname, String gender, String email, String address) {
        this.rollno = rollno;
        this.fullname = fullname;
        this.gender = gender;
        this.email = email;
        this.address = address;
    }

    public String getRollno() {
        return rollno;
    }

    public void setRollno(String rollno) {
        this.rollno = rollno;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
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
    
    
}