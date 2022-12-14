package model.service;

import model.entity.Account;
import model.entity.TransInfo;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Service
@Transactional
public class TransService {
    @PersistenceContext
    private EntityManager entityManager;
    public void save(TransInfo transInfo) {
        entityManager.persist(transInfo);
    }
    public void update(TransInfo transInfo) {
        entityManager.merge(transInfo);
    }

    public void delete(TransInfo transInfo) {

        transInfo = entityManager.merge(transInfo);

    }

    public List<TransInfo> findAll() {

        List<TransInfo> transInfos = entityManager.createQuery("select o from transinfo o").getResultList();

        return transInfos;
    }
    public List<TransInfo> findByTransTime(long userid) {


        List<TransInfo> transInfos = entityManager.createQuery("select o from account o where o.userid " +
                ":=n").setParameter("n",userid).getResultList();

        return transInfos;
    }


}
