package topcalc.service;
 
public class TopCalc {

    public static void main(String[] args) {
        System.out.println("Hello World!");
    }

    public String SayHello(String name) {
        if(name != null){
                return "Hello " + name + "!";
        }
        return "Hello World!";
    }
 
}
