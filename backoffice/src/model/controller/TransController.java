package model.controller;


import model.common.GenerateUserIdNumber;
import model.entity.Account;
import model.entity.TransInfo;
import model.entity.User;
import model.service.AccountService;
import model.service.TransService;
import model.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/transaction")
public class TransController {
    @Autowired
    private TransService transService;

    @RequestMapping("/save.do")
    public String save(HttpServletRequest request)
        {
        TransInfo transInfo = new TransInfo();
        transInfo.setAccountNumber(Long.parseLong(request.getParameter("accNo")))
                .setCode(Short.parseShort(request.getParameter("code")))
                .setDepAmount(Long.parseLong(request.getParameter("depAmnt")))
                .setWithAmount(Long.parseLong(request.getParameter("withAmnt")))
                .setDescription(request.getParameter("desc"))
                .setTrasNo(Long.parseLong(request.getParameter("transNo")))
                .setDestTransNo(Long.parseLong(request.getParameter("destTransNo")))
                .setTransDate(Long.parseLong(request.getParameter("transDate")))
                .setTransTime(Long.parseLong(request.getParameter("transTime")));

        transService.save(transInfo);

        return "redirect:/transaction/findAll.do";
    }

    @RequestMapping("/update.do")
    public String update(HttpServletRequest request)
    {
        TransInfo transInfo = new TransInfo().setAccountNumber(Long.parseLong(request.getParameter("accountNumber")))
                .setCode(Short.parseShort(request.getParameter("code")))
                .setDepAmount(Long.parseLong(request.getParameter("depAmount")))
                .setWithAmount(Long.parseLong(request.getParameter("withAmount")))
                .setDescription(request.getParameter("description"))
                .setTrasNo(Long.parseLong(request.getParameter("trasNo")))
                .setDestTransNo(Long.parseLong(request.getParameter("destTransNo")))
                .setTransDate(Long.parseLong(request.getParameter("transDate")))
                .setTransTime(Long.parseLong(request.getParameter("transTime")));
        transService.update(transInfo);

        return "redirect:/transaction/findAll.do";
    }
    @RequestMapping("/delete.do")
    public String delete(HttpServletRequest request)
    {
        TransInfo transInfo = new TransInfo().setId(Long.parseLong(request.getParameter("id")));
        transService.delete(transInfo);
        return "redirect:/transaction/findAll.do";
    }
    @RequestMapping("/findAll.do")
    public String findAll(HttpServletRequest request)
    {
        request.setAttribute("list", transService.findAll());
        return "inputTransaction";
    }







}
