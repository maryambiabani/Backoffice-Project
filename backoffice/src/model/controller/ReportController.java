package model.controller;

import model.entity.TransInfo;
import model.service.ReportServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/report")
public class ReportController {
    @Autowired
    ReportServices reportServices;

    @RequestMapping("/date")
    public String reportByDate(HttpServletRequest request){
        List<TransInfo> transInfoList=reportServices.reportByDate(Long.parseLong(request.getParameter("fromDate")),
                Long.parseLong(request.getParameter("toDate")));
        request.setAttribute("list", transInfoList);
        request.setAttribute("totalNumber",reportServices.getTotalNumber(transInfoList));
        request.setAttribute("totalWithAmount",reportServices.getTotalWithAmount(transInfoList));
        request.setAttribute("totalDepAmount",reportServices.getTotalDepAmount(transInfoList));

   return "Result";

    }
    @RequestMapping("/service")
    public String reportByService(HttpServletRequest request){
        List<TransInfo> transInfoList=reportServices.reportByService(Long.parseLong(request.getParameter("fromDate1")),
                Long.parseLong(request.getParameter("toDate1")),Short.parseShort(request.getParameter("selectService")));
        request.setAttribute("list", transInfoList);
        request.setAttribute("totalNumber",reportServices.getTotalNumber(transInfoList));
        request.setAttribute("totalWithAmount",reportServices.getTotalWithAmount(transInfoList));
        request.setAttribute("totalDepAmount",reportServices.getTotalDepAmount(transInfoList));
        System.out.println(request.getParameter("selectService"));
        return "Result";}


    @RequestMapping("/accountNo")
    public String reportByAccount(HttpServletRequest request){

        List<TransInfo> transInfoList=reportServices.reportByAccountNo(Long.parseLong(request.getParameter("fromDate2")),
                Long.parseLong(request.getParameter("toDate2")),Long.parseLong(request.getParameter("accNo1")));

        request.setAttribute("list", transInfoList);
        request.setAttribute("totalNumber",reportServices.getTotalNumber(transInfoList));
        request.setAttribute("totalWithAmount",reportServices.getTotalWithAmount(transInfoList));
        request.setAttribute("totalDepAmount",reportServices.getTotalDepAmount(transInfoList));

        return "Result";

    }

}
