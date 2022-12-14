package model.controller;

import model.common.GenerateUserIdNumber;

import model.entity.Account;
import model.entity.User;
import model.service.AccountService;
import model.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private AccountService accountService;
    @RequestMapping("/save.do")
    public String save(HttpServletRequest request)
    {
        GenerateUserIdNumber generateUserIdNumber = new GenerateUserIdNumber();
        long userId=generateUserIdNumber.userIdGenerator();

        User user = new User().setCreateDate( java.time.LocalDate.now().toString()).setCreateTime(java.time.LocalTime.now().toString())
        .setLastTransDate("0").setLastTransTime("0").setUserId(userId)
                .setName(request.getParameter("name")).setFamily(request.getParameter("family"))
                .setMobileNo(request.getParameter("mobile"))
                .setNationalId(Long.parseLong(request.getParameter("nationalid"))).setStatus(request.getParameter("status"));
        userService.save(user);

        Account account=new Account().setAccountNumber(userId+8000000).setUserid(userId).setLastTransDate(Long.parseLong(java.time.LocalDate.now().toString().replaceAll("-","")))
                .setLastTransTime(Long.parseLong(java.time.LocalTime.now().toString().replaceAll(":","").replaceAll("\\.",""))).setUserid(userId)
                .setRemainBalance(50000).setMobileNo(Long.parseLong(request.getParameter("mobile"))).setType((short) 1);
        accountService.save(account);


        return "redirect:/user/findAll.do";
    }

    @RequestMapping("/update.do")
    public String update(HttpServletRequest request)
    {  try {
        User user = new User();
        user.setLastTransDate(java.time.LocalDate.now().toString());
        user.setLastTransTime(java.time.LocalTime.now().toString());
        user.setName(request.getParameter("name"));
        user.setFamily(request.getParameter("family"));
        user.setStatus(request.getParameter("status"));
        user.setId(Short.parseShort(request.getParameter("id"))).
                setMobileNo(request.getParameter("mobileNo"))
                .setNationalId(Long.parseLong(request.getParameter("nationalid")))
                .setCreateDate(request.getParameter("createdate"))
        .setUserId(Long.parseLong(request.getParameter("userid")));
        userService.update(user);
    }catch (Exception e){
        System.out.println( e.getMessage());
        return "getUser";

    }

        return "redirect:/user/findAll.do";
    }
    @RequestMapping("/delete.do")
    public String delete(HttpServletRequest request)
    {
        User user = new User().setId(Long.parseLong(request.getParameter("id")));
        userService.delete(user);
        return "redirect:/user/findAll.do";
    }
    @RequestMapping("/findAll.do")
    public String findAll(HttpServletRequest request)
    {
        request.setAttribute("list", userService.findAll());
        return "getUser";
    }

    @RequestMapping("/search.do")
    public String search(HttpServletRequest request) {
        System.out.println("controller...........................................................");
        request.setAttribute("list", userService.findAll(request.getParameter("searchuser")));
        return "getUser";
    }























    @RequestMapping("/createUser.do")
    public String create() {
        return "createUser";
    }


}
