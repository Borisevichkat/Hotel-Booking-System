package Model;

import java.util.Date;

public class Session {
    private int sessionId;
    private int user;
    private String token;
    private Date expiredTime;

    public Session(){
    }

    public Session(int sessionId, int user, String token, Date expiredTime) {
        this.sessionId = sessionId;
        this.user = user;
        this.token = token;
        this.expiredTime = expiredTime;
    }

    public int getSessionId() {
        return sessionId;
    }

    public void setSessionId(int sessionId) {
        this.sessionId = sessionId;
    }

    public int getUser() {
        return user;
    }

    public void setUser(int user) {
        this.user = user;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Date getExpiredTime() {
        return expiredTime;
    }

    public void setExpiredTime(Date expiredTime) {
        this.expiredTime = expiredTime;
    }
}
