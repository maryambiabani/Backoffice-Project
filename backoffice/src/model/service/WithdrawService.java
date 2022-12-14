package model.service;


import model.common.GenerateUserIdNumber;
import model.entity.Account;
import model.entity.TransInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Service
@Transactional
public class WithdrawService {
    @PersistenceContext
    EntityManager entityManager;
    @Autowired
    TransService transService;

    GenerateUserIdNumber generateUserIdNumber=new GenerateUserIdNumber();
    public String withdraw(long accNo,String description,long amount){
    String result= "error.......";
        Account account = (Account) entityManager.createQuery("select o from account o where o.accountNumber =:n")
                .setParameter("n",accNo).getSingleResult();

        System.out.println(account.getRemainBalance()
        +account.getAccountNumber()+"\n"+amount);
//        if (account.getRemainBalance() == 0){
//
//            System.out.println("balance is not enough!!!!!!!");
//            return result;
//        }else{

long balance=account.getRemainBalance();
            TransInfo transInfo = new TransInfo();
            transInfo.setTransTime(Long.parseLong(java.time.LocalTime.now().toString().replaceAll(":","").replaceAll("\\.","")))
                    .setTransDate(Long.parseLong(java.time.LocalDate.now().toString().replaceAll("-","")))
                    .setTrasNo(generateUserIdNumber.accNoGenerator()).setDescription(description)
                    .setWithAmount(amount).setDepAmount(0).setDestTransNo(0).setCode((short) 5).setAccountNumber(account.getAccountNumber());

            transService.save(transInfo);
            AccountService accountService = new AccountService();
            account.setRemainBalance(balance-amount);
            account.setLastTransDate(Long.parseLong(java.time.LocalDate.now().toString().replaceAll("-","")))
                    .setLastTransTime(Long.parseLong(java.time.LocalTime.now().toString().replaceAll(":","").replaceAll("\\.","")));
            accountService.update(account);

result="succes...";
//        }
    return result;}
}
