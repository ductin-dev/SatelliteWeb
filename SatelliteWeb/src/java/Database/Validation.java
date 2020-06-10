package Database;
//Author: Doan Duc Tin

import java.util.ArrayList;

public class Validation {

    public static boolean checkString(String a) {
        return !a.isEmpty();
    }

    public static boolean checkPrimaryKey(String s, ArrayList<Student> arr) {
        for (Student i : arr) {
            if (i.getsNo().equalsIgnoreCase(s)) {
                return false;
            }
        }
        return true;
    }
}
