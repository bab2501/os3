package topcalc.service;
 
public class TopCalc {
 
    public String SayHello(String name) {
        if(name != null){
                return "Hello " + name + "!";
        }
        return "Hello World!";
    }
 
}
