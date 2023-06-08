package shop.mtcoding.kakao1;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String ok(){
        return "<h1>ok</h1>";
    }

    @GetMapping("/hello")
    public String hello(){
        return "<h1>hello</h1>";
    }
}
