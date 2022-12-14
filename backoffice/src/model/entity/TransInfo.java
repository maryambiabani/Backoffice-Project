package model.entity;

import javax.persistence.*;
import java.io.Serializable;
@Entity(name = "transinfo")
@Table(name = "transinfo")
public class TransInfo implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "ts")
    @SequenceGenerator(name = "ts", sequenceName = "trans_seq", initialValue = 1, allocationSize = 1)
    private long id;
    @Column(columnDefinition = "NUMBER")
    private long trasNo;
    @Column(columnDefinition = "NUMBER")
    private long accountNumber;
    @Column(columnDefinition = "VARCHAR2(100)")
    private String description;
    @Column(columnDefinition = "NUMBER")
    private long depAmount;
    @Column(columnDefinition = "NUMBER")
    private long withAmount;
    @Column(columnDefinition = "SMAllINT")
    private short code;
    @Column(columnDefinition = "NUMBER")
    private long destTransNo;
    @Column(columnDefinition = "NUMBER")
    private long transDate;
    @Column(columnDefinition = "NUMBER")
    private long transTime;

    public long getId() {
        return id;
    }

    public TransInfo setId(long id) {
        this.id = id;
        return this;
    }

    public long getTrasNo() {
        return trasNo;
    }

    public TransInfo setTrasNo(long trasNo) {
        this.trasNo = trasNo;
        return this;
    }

    public long getAccountNumber() {
        return accountNumber;
    }

    public TransInfo setAccountNumber(long accountNumber) {
        this.accountNumber = accountNumber;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public TransInfo setDescription(String description) {
        this.description = description;
        return this;
    }

    public long getDepAmount() {
        return depAmount;
    }

    public TransInfo setDepAmount(long depAmount) {
        this.depAmount = depAmount;
        return this;
    }

    public long getWithAmount() {
        return withAmount;
    }

    public TransInfo setWithAmount(long withAmount) {
        this.withAmount = withAmount;
        return this;
    }

    public short getCode() {
        return code;
    }

    public TransInfo setCode(short code) {
        this.code = code;
        return this;
    }

    public long getDestTransNo() {
        return destTransNo;
    }

    public TransInfo setDestTransNo(long destTransNo) {
        this.destTransNo = destTransNo;
        return this;
    }

    public long getTransDate() {
        return transDate;
    }

    public TransInfo setTransDate(long transDate) {
        this.transDate = transDate;
        return this;
    }

    public long getTransTime() {
        return transTime;
    }

    public TransInfo setTransTime(long transTime) {
        this.transTime = transTime;
        return this;
    }
}
