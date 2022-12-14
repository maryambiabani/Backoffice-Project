package model.service;


import model.entity.TransInfo;
import model.entity.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Service
@Transactional
public class ReportServices {
@PersistenceContext
private EntityManager entityManager;
    public List<TransInfo> reportByDate(long transFrom,long transTo) {


      List<TransInfo> transInfoList= entityManager.createQuery("select o from transinfo o where o.transDate between :n and :m")
              .setParameter("n",transFrom).setParameter("m",transTo).getResultList();
        return transInfoList;
    }

    public List<TransInfo> reportByService(long transFrom,long transTo,short code){

        List<TransInfo> transInfoList= entityManager.createQuery("select o from transinfo o where o.code=:s and  o.transDate between :n and :m ")
                .setParameter("n",transFrom).setParameter("m",transTo).setParameter("s",code).getResultList();
        System.out.println(transInfoList.size());
        return transInfoList;

    }

    public List<TransInfo> reportByAccountNo(long transFrom,long transTo,long acc){

        List<TransInfo> transInfoList= entityManager.createQuery("select o from transinfo o where o.accountNumber=:s and o.transDate between :n and :m ")
                .setParameter("n",transFrom).setParameter("m",transTo).setParameter("s",acc).getResultList();
        System.out.println(transInfoList.size());
        return transInfoList;

    }


    public long getTotalWithAmount(List<TransInfo> transInfoList){
        long total=0;
        for (TransInfo t:transInfoList) {
            total+=t.getWithAmount();
        }
    return total;}

    public long getTotalDepAmount(List<TransInfo> transInfoList){
        long total=0;
        for (TransInfo t:transInfoList) {
            total+=t.getDepAmount();
        }
        return total;}

    public int getTotalNumber(List<TransInfo> transInfoList){
        return transInfoList.size();}

}
