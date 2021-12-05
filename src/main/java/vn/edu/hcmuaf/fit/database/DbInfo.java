package vn.edu.hcmuaf.fit.database;

public class DbInfo {
    private String uid;
    private String pwd;
    private String database;

    public DbInfo() {}

    public DbInfo(String uid, String pwd, String database) {
        this.uid = uid;
        this.pwd = pwd;
        this.database = database;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getDatabase() {
        return database;
    }

    public void setDatabase(String database) {
        this.database = database;
    }
}
