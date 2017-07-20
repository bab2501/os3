package helloworld.service.pojo;
 
public class HelloWorld {
 
    public String SayHello(String name) {
        if(name != null){
                return "Hello " + name + "!";
        }
        return "Hello World!";
    }
 
}
