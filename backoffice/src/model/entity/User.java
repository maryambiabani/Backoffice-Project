package model.entity;


import javax.persistence.*;

@Entity(name = "userinfo")
@Table(name = "userinfo")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "us")
    @SequenceGenerator(name = "us", sequenceName = "user_seq", initialValue = 1, allocationSize = 1)
    private long id;
    @Column(columnDefinition = "NUMBER")
    private long userId;
    @Column(columnDefinition = "VARCHAR2(20)")
    private String name;
    @Column(columnDefinition = "VARCHAR2(20)")
    private String family;
    @Column(columnDefinition = "VARCHAR2(20)")
    private String createDate;
    @Column(columnDefinition = "VARCHAR2(20)")
    private String createTime;
    @Column(columnDefinition = "VARCHAR2(20)")
    private String status;
    @Column(columnDefinition = "VARCHAR2(20)")
    private String lastTransDate;
    @Column(columnDefinition = "VARCHAR2(20)")
    private String lastTransTime;
    @Column(columnDefinition = "NUMBER")
    private long nationalId;
    @Column(columnDefinition = "VARCHAR2(20)")
    private String mobileNo;

    public long getId() {
        return id;
    }

    public User setId(long id) {
        this.id = id;
        return this;
    }

    public long getUserId() {
        return userId;
    }

    public User setUserId(long userId) {
        this.userId = userId;
        return this;
    }

    public String getName() {
        return name;
    }

    public User setName(String name) {
        this.name = name;
        return this;
    }

    public String getFamily() {
        return family;
    }

    public User setFamily(String family) {
        this.family = family;
        return this;
    }

    public String getCreateDate() {
        return createDate;
    }

    public User setCreateDate(String createDate) {
        this.createDate = createDate;
        return this;
    }

    public String getCreateTime() {
        return createTime;
    }

    public User setCreateTime(String createTime) {
        this.createTime = createTime;
        return this;
    }

    public String getStatus() {
        return status;
    }

    public User setStatus(String status) {
        this.status = status;
        return this;
    }

    public String getLastTransDate() {
        return lastTransDate;
    }

    public User setLastTransDate(String lastTransDate) {
        this.lastTransDate = lastTransDate;
        return this;
    }

    public String getLastTransTime() {
        return lastTransTime;
    }

    public User setLastTransTime(String lastTransTime) {
        this.lastTransTime = lastTransTime;
        return this;
    }

    public long getNationalId() {
        return nationalId;
    }

    public User setNationalId(long nationalId) {
        this.nationalId = nationalId;
        return this;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public User setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
        return this;
    }
}
