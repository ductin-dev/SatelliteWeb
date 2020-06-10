package Database;
//Author: Doan Duc Tin

public class User {

    private int uNo;
    private String uName;
    private String uPass;
    private int uRole;

    public User(int uNo, String uName, String uPass, int uRole) {
        this.uNo = uNo;
        this.uName = uName;
        this.uPass = uPass;
        this.uRole = uRole;
    }

    public int getuNo() {
        return uNo;
    }

    public void setuNo(int uNo) {
        this.uNo = uNo;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuPass() {
        return uPass;
    }

    public void setuPass(String uPass) {
        this.uPass = uPass;
    }

    public int getuRole() {
        return uRole;
    }

    public void setuRole(int uRole) {
        this.uRole = uRole;
    }
}
