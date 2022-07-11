package com.example.memorizerbackend.db.user;

import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.ColumnDefault;


@Entity // This tells Hibernate to make a table out of this class
public class User {
  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private Integer UserId;

  @ColumnDefault("")
  private String FirstName;

  @ColumnDefault("")
  private String LastName;

  @ColumnDefault("")
  private String Email;

  @ColumnDefault("")
  private String ContactNo;

  @ColumnDefault("")
  private String Password;

  @ColumnDefault("false")
  private Byte EmailVerified;

  @ColumnDefault("false")
  private Byte DefaultMemoryPrivacy;

  @ColumnDefault("")
  private String ProfilePic;

  @ColumnDefault("System.currentTimeMillis()")
  private Timestamp CreateTime;

  @ColumnDefault("System.currentTimeMillis()")
  private Timestamp UpdateTime;

  @ColumnDefault("")
  private Date Dob;
    //TODO: Column default not working


//   Default Constructor  
    //TODO: Normal constructor not able to overwrite default constructor
    public User(){
    
    };

    public User(String FirstName,String LastName,String Email,String ContactNo,String Password){
        super();
        this.FirstName = FirstName;
        this.LastName = LastName;
        this.Email = Email;
        this.ContactNo = ContactNo;
        this.Password = Password;
    }

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

  public String getProfilePic() {
      return ProfilePic;
  }

  public void setProfilePic(String profilePic) {
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



  