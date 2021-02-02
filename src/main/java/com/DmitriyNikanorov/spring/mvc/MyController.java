package com.DmitriyNikanorov.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MyController {

    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmloyeeDetails(Model model) {

//        model.addAttribute("employee", new Employee());
        model.addAttribute("employee");
        Employee emp = new Employee();
        emp.setName("someName");
        emp.setSurName("someSurnme");
        emp.setSalary(100);
        return "ask-emp-details-view";
    }

    @RequestMapping("/showDetails")
    public String showEmpDetails(@ModelAttribute("employee")Employee emp){
       return  "show-emp-details-view" ;
    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails(HttpServletRequest request, Model model) {
//
//        String empName=request.getParameter("employeeName");
//        empName = "Mr. "+ empName;
//        model.addAttribute("nameAttribute",empName);
//
//        return "show-emp-details-view";
//    }

//    @RequestMapping("/showDetails")
//    public String showEmpDetails(@RequestParam("employeeName")
//                                         String empName, Model model) {
//
////        String empName=request.getParameter("employeeName");
//        empName = "Mr. " + empName;
//        model.addAttribute("nameAttribute", empName);
//
//        return "show-emp-details-view";
//    }


}
