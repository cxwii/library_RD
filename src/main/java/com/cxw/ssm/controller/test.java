package com.cxw.ssm.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class test {
    @RequestMapping("ceshi")
    public String ceshi() {
        return "fdfa4564你好";

    }
}
