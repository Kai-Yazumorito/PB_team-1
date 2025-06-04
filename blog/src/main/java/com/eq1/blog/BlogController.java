package com.eq1.blog;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BlogController {
    @GetMapping("/hola")
    public String holaMundo(){
        return "Hola Mundo :D";
    }
}
