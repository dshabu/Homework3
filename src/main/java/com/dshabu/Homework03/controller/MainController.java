package com.dshabu.Homework03.controller;

import com.dshabu.Homework03.model.EquipmentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@EnableAutoConfiguration
//@ComponentScan(basePackages = "com.dshabu.Homework03.controller")
public class MainController {
    @Autowired
    EquipmentRepo equipmentRepo;

    @RequestMapping("/")
    public ModelAndView doHome() {
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("equipmentList", equipmentRepo.findAll());

        return mv;
    }
}
