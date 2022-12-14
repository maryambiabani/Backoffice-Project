package model.entity;

import javax.persistence.*;
import java.io.Serializable;
@Entity(name = "account")
@Table(name = "account")
public class Account implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "as")
    @SequenceGenerator(name = "as", sequenceName = "acc_seq", initialValue = 1, allocationSize = 1)
    private long id;
    @Column(columnDefinition = "NUMBER")
    private long userid;
    @Column(columnDefinition = "NUMBER")
    private long accountNumber;
    @Column(columnDefinition = "NUMBER")
    private long remainBalance;
    @Column(columnDefinition = "NUMBER")
    private long mobileNo;
    @Column(columnDefinition = "SMALLINT")
    private short status;
    @Column(columnDefinition = "SMALLINT")
    private short type;
    @Column(columnDefinition = "NUMBER")
    private long lastTransDate;
    @Column(columnDefinition = "NUMBER")
    private long lastTransTime;

    public long getId() {
        return id;
    }

    public Account setId(long id) {
        this.id = id;
        return this;
    }

    public long getUserid() {
        return userid;
    }

    public Account setUserid(long userid) {
        this.userid = userid;
        return this;
    }
    public long getAccountNumber() {
        return accountNumber;
    }

    public Account setAccountNumber(long accountNumber) {
        this.accountNumber = accountNumber;
        return this;
    }

    public long getRemainBalance() {
        return remainBalance;
    }

    public Account setRemainBalance(long remainBalance) {
        this.remainBalance = remainBalance;
        return this;
    }

    public long getMobileNo() {
        return mobileNo;
    }

    public Account setMobileNo(long mobileNo) {
        this.mobileNo = mobileNo;
        return this;
    }

    public short getStatus() {
        return status;
    }

    public Account setStatus(short status) {
        this.status = status;
        return this;
    }

    public short getType() {
        return type;
    }

    public Account setType(short type) {
        this.type = type;
        return this;
    }

    public long getLastTransDate() {
        return lastTransDate;
    }

    public Account setLastTransDate(long lastTransDate) {
        this.lastTransDate = lastTransDate;
        return this;
    }

    public long getLastTransTime() {
        return lastTransTime;
    }

    public Account setLastTransTime(long lastTransTime) {
        this.lastTransTime = lastTransTime;
        return this;
    }
}
