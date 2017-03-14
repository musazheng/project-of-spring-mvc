package com.zd.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by zd on 2017/3/11.
 */
@Entity
@Table(name="m_user")
public class User implements Serializable{
    private long userId;
    private String name;
    private int old;
    private String callNo;
    private String address;

    @Id @GeneratedValue
    @Column(name="user_id",unique = true,nullable = false,length = 20)
    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    @Column(name = "name",length = 20)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "old",length = 4)
    public int getOld() {
        return old;
    }

    public void setOld(int old) {
        this.old = old;
    }

    @Column(name = "call_No",length = 20)
    public String getCallNo() {
        return callNo;
    }

    public void setCallNo(String callNo) {
        this.callNo = callNo;
    }

    @Column(name = "address",length = 100)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
