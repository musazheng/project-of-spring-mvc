package com.zd.dao;

import com.zd.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by zd on 2017/3/13.
 */
@Repository
@Component
public class UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.getCurrentSession();
    }

    public void save(User user) {
        this.getSession().save(user);
    }

    public void delUserbyId(String userId) {
        this.getSession().createQuery("delete from User where userId=?").setParameter(0, Integer.valueOf(userId)).executeUpdate();
    }

    public List<User> getAllUser() {
        return this.getSession().createCriteria(User.class).list();
    }

    public void updateUser(User user) {
          this.getSession().update(user);
    }

    public User getUserById(String userId) {
        return (User) this.getSession().createQuery("from User where userId=?").setParameter(0,Integer.valueOf(userId)).uniqueResult();
    }
}
