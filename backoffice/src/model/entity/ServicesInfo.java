package model.entity;

import javax.persistence.*;
import java.io.Serializable;


@Entity(name = "serviceinfo")
@Table(name = "serviceinfo")
public class ServicesInfo implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "ss")
    @SequenceGenerator(name = "ss", sequenceName = "service_seq", initialValue = 1, allocationSize = 1)
    private long id;
    @Column(columnDefinition = "SMAllINT")
    private short status;
    @Column(columnDefinition = "NUMBER")
    private long maxAmount;
    @Column(columnDefinition = "NUMBER")
    private long minAmount;
    @Column(columnDefinition = "SMAllINT")
    private short code;
    @Column(columnDefinition = "VARCHAR2(100)")
    private String description;

    public long getId() {
        return id;
    }

    public ServicesInfo setId(long id) {
        this.id = id;
        return this;
    }

    public short getStatus() {
        return status;
    }

    public ServicesInfo setStatus(short status) {
        this.status = status;
        return this;
    }

    public long getMaxAmount() {
        return maxAmount;
    }

    public ServicesInfo setMaxAmount(long maxAmount) {
        this.maxAmount = maxAmount;
        return this;
    }

    public long getMinAmount() {
        return minAmount;
    }

    public ServicesInfo setMinAmount(long minAmount) {
        this.minAmount = minAmount;
        return this;
    }

    public short getCode() {
        return code;
    }

    public ServicesInfo setCode(short code) {
        this.code = code;
        return this;
    }

    public String getDescription() {
        return description;
    }

    public ServicesInfo setDescription(String description) {
        this.description = description;
        return this;
    }
}
