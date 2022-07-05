package com.example.memorizerbackend.db.memory;

import java.sql.Blob;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Memory {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer MemoryId;

    private Integer CreatedBy;

    private Integer CreatedFor;

    private String Title;

    private Blob Content;

    private Blob Photo;

    private Byte Privacy;

    private Timestamp CreateTime;

    private Timestamp UpdateTime;

    public Integer getMemoryId() {
        return MemoryId;
    }

    public void setMemoryId(Integer memoryId) {
        MemoryId = memoryId;
    }

    public Integer getCreatedBy() {
        return CreatedBy;
    }

    public void setCreatedBy(Integer createdBy) {
        CreatedBy = createdBy;
    }

    public Integer getCreatedFor() {
        return CreatedFor;
    }

    public void setCreatedFor(Integer createdFor) {
        CreatedFor = createdFor;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public Blob getContent() {
        return Content;
    }

    public void setContent(Blob content) {
        Content = content;
    }

    public Blob getPhoto() {
        return Photo;
    }

    public void setPhoto(Blob photo) {
        Photo = photo;
    }

    public Byte getPrivacy() {
        return Privacy;
    }

    public void setPrivacy(Byte privacy) {
        Privacy = privacy;
    }

    public Timestamp getCreateTime() {
        return CreateTime;
    }

    public void setCreateTime(Timestamp createTime) {
        CreateTime = createTime;
    }

    public Timestamp getUpdateTime() {
        return UpdateTime;
    }

    public void setUpdateTime(Timestamp updateTime) {
        UpdateTime = updateTime;
    }
    
}
