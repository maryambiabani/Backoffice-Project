package model.controller;


import model.service.WithdrawService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/service")
public class ServiceController {
    @Autowired
    WithdrawService withdrawService;
    @RequestMapping("/withdraw.do")
    public String withdraw(HttpServletRequest request) {
        request.setAttribute("result", withdrawService.withdraw(Long.parseLong(request.getParameter("accNo")),request.getParameter("desc"),
                Long.parseLong(request.getParameter("amount"))));

        System.out.println("++++++++++++++++++++++++++++++++++++++++");
        System.out.println(Long.parseLong(request.getParameter("accNo")));
        System.out.println(request.getParameter("desc"));
        System.out.println(Long.parseLong(request.getParameter("amount")));
        System.out.println("__________________________________________");
    return "Services";}

}
