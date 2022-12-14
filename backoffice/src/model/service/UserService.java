package model.service;

import model.entity.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Service
@Transactional
public class UserService {
    @PersistenceContext
    EntityManager entityManager;
    public void save(User user) {
        entityManager.persist(user);

    }
    public void update(User user) {

        entityManager.merge(user);

    }

    public void delete(User user) {


        user = entityManager.merge(user);

    }

    public List<User> findAll() {

        List<User> userList = entityManager.createQuery("select o from userinfo o").getResultList();
        return userList;
    }
    public List<User> findAll(String search) {
        System.out.println(search);

        List<User> userList = entityManager.createQuery("select o from userinfo o where o.name like :search or o.family like :search").setParameter("search","%"+search+"%").getResultList();
        return userList;
    }

}
