package model.controller;


import model.entity.Account;
import model.entity.TransInfo;
import model.service.AccountService;
import model.service.TransService;
import model.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/account")
public class AccountController {
    @Autowired
private AccountService accountService;

    @RequestMapping("/save.do")
    public String save(HttpServletRequest request)
    {    Account account = new Account().setUserid(Long.parseLong(request.getParameter("userid"))).setLastTransDate(Long.parseLong(java.time.LocalDate.now().toString().replaceAll("-","")))
           .setLastTransTime(Long.parseLong(java.time.LocalTime.now().toString().replaceAll(":","").replaceAll("\\.",""))).setAccountNumber(Long.parseLong(request.getParameter("accNo")))
            .setRemainBalance(Long.parseLong((request.getParameter("balance")))).setMobileNo(Long.parseLong(request.getParameter("mobile"))).setType((short) 1).setStatus((short)1);
        accountService.save(account);

        return "redirect:/account/findAll.do";
    }

    @RequestMapping("/update.do")
    public String update(HttpServletRequest request)


    {
        Account account = new Account().setUserid(Long.parseLong(request.getParameter("userid")))
                .setAccountNumber(Long.parseLong(request.getParameter("accNo")))
                .setLastTransDate(Long.parseLong(request.getParameter("lastTransDate")))
                .setLastTransTime(Long.parseLong(request.getParameter("lastTransTime")))
                .setRemainBalance(Long.parseLong((request.getParameter("balance"))))
                .setMobileNo(Long.parseLong(request.getParameter("mobile")))
                .setType(Short.parseShort(request.getParameter("type"))).
                        setStatus(Short.parseShort(request.getParameter("status")));
        accountService.update(account);


        return "redirect:/account/findAll.do";
    }
    @RequestMapping("/delete.do")
    public String delete(HttpServletRequest request)
    {
        Account account = new Account().setId(Long.parseLong(request.getParameter("id")));
        accountService.delete(account);
        return "redirect:/account/findAll.do";
    }
    @RequestMapping("/findAll.do")
    public String findAll(HttpServletRequest request)
    {
        request.setAttribute("list", accountService.findAll());
        return "inputAccount";
    }


}
