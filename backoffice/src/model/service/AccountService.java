package model.service;

import model.entity.Account;
import model.entity.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
@Service
@Transactional
public class AccountService {
    @PersistenceContext
    private EntityManager entityManager;
    public void save(Account account) {
        entityManager.persist(account);
    }
    public void update(Account account) {
        entityManager.merge(account);
    }

    public void delete(Account account) {

        account = entityManager.merge(account);

    }

    public List<Account> findAll() {

        List<Account> accountList = entityManager.createQuery("select o from account o").getResultList();

        return accountList;
    }
    public List<Account> findAll(long userid) {

        List<Account> accountList = entityManager.createQuery("select o from account o where o.userid " +
                "=:n").setParameter("n",userid).getResultList();

        return accountList;
    }
}
