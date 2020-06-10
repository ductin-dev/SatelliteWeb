package Controller;
//Author: Doan Duc Tin

public class CurrentUser {

    private static String name = "";

    public static String getName() {
        return name;
    }

    public static void setName(String name) {
        CurrentUser.name = name;
    }
}
