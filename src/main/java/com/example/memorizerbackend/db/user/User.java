package com.example.memorizerbackend.db.user;

import java.sql.Blob;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity // This tells Hibernate to make a table out of this class
public class User {
  @Id
  @Column(name="UserId")
  @GeneratedValue(strategy=GenerationType.AUTO)
  private Integer UserId;

  @Column(name="FirstName")
  private String FirstName;

  @Column(name="LastName")
  private String LastName;

  @Column(name="Email")
  private String Email;

  @Column(name="ContactNo")
  private String ContactNo;

  @Column(name="Password")
  private String Password;

  @Column(name="EmailVerified")
  private Byte EmailVerified;

  @Column(name="DefaultMemoryPrivacy")
  private Byte DefaultMemoryPrivacy;

  @Column(name="ProfilePic")
  private Blob ProfilePic;

  @Column(name="CreateTime")
  private Timestamp CreateTime;

  @Column(name="UpdateTime")
  private Timestamp UpdateTime;

  @Column(name="Dob")
  private Date Dob;

  public Integer getUserId() {
      return UserId;
  }

  public void setUserId(Integer userId) {
      UserId = userId;
  }

  public String getFirstName() {
      return FirstName;
  }

  public void setFirstName(String firstName) {
      FirstName = firstName;
  }

  public String getLastName() {
      return LastName;
  }

  public void setLastName(String lastName) {
      LastName = lastName;
  }

  public String getEmail() {
      return Email;
  }

  public void setEmail(String email) {
      Email = email;
  }

  public Byte getEmailVerified() {
      return EmailVerified;
  }

  public void setEmailVerified(Byte emailVerified) {
      EmailVerified = emailVerified;
  }

  public String getContactNo() {
      return ContactNo;
  }

  public void setContactNo(String contactNo) {
      ContactNo = contactNo;
  }

  public Blob getProfilePic() {
      return ProfilePic;
  }

  public void setProfilePic(Blob profilePic) {
      ProfilePic = profilePic;
  }

  public Timestamp getCreateTime() {
      return CreateTime;
  }

  public void setCreateTime(Timestamp createTime) {
      CreateTime = createTime;
  }

  public Byte getDefaultMemoryPrivacy() {
      return DefaultMemoryPrivacy;
  }

  public void setDefaultMemoryPrivacy(Byte defaultMemoryPrivacy) {
      DefaultMemoryPrivacy = defaultMemoryPrivacy;
  }

  public Date getDob() {
      return Dob;
  }

  public void setDob(Date dob) {
      Dob = dob;
  }

  public String getPassword() {
      return Password;
  }

  public void setPassword(String password) {
      Password = password;
  }

  public Timestamp getUpdateTime() {
      return UpdateTime;
  }

  public void setUpdateTime(Timestamp updateTime) {
      UpdateTime = updateTime;
  }
}



  