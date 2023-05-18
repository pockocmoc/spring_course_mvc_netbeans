package com.zaurtregulov.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee") //в адресной строке дописать /employee
public class MyController {
    
    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }
    
    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {

//        Employee emp = new Employee();
//        emp.setName("Marat");
//        emp.setSurname("Sabirov");
//        emp.setSalary(500);
//        model.addAttribute("employee", emp);
        model.addAttribute("employee", new Employee());
        
        return "ask-emp-details-view";
    }
    
    @RequestMapping("/showDetails")
    public String showEmpDetails(@ModelAttribute("employee") Employee employee) {
        
        String name = employee.getName();
        employee.setName("Mr " + name);
        
        String surname = employee.getSurname();
        employee.setSurname(surname + "!");
        
        int salary = employee.getSalary();
        employee.setSalary(salary * 10);
        
        return "show-emp-details-view";
    }
}
