package Database;

//Author: Doan Duc Tin
public class Student {

    private String sNo;
    private String sName;
    private String sGender;
    private String sClass;
    private String sAdress;
    private String sEmail;

    public Student(String sNo, String sName, String sGender, String sClass, String sAdress, String sEmail) {
        this.sNo = sNo;
        this.sName = sName;
        this.sGender = sGender;
        this.sClass = sClass;
        this.sAdress = sAdress;
        this.sEmail = sEmail;
    }

    public String getsNo() {
        return sNo;
    }

    public void setsNo(String sNo) {
        this.sNo = sNo;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName;
    }

    public String getsGender() {
        return sGender;
    }

    @Override
    public String toString() {
        return "Student{" + "sNo=" + sNo + ", sName=" + sName + ", sGender=" + sGender + ", sClass=" + sClass + ", sAdress=" + sAdress + ", sEmail=" + sEmail + '}';
    }

    public void setsGender(String sGender) {
        this.sGender = sGender;
    }

    public String getsClass() {
        return sClass;
    }

    public void setsClass(String sClass) {
        this.sClass = sClass;
    }

    public String getsAdress() {
        return sAdress;
    }

    public void setsAdress(String sAdress) {
        this.sAdress = sAdress;
    }

    public String getsEmail() {
        return sEmail;
    }

    public void setsEmail(String sEmail) {
        this.sEmail = sEmail;
    }

}
