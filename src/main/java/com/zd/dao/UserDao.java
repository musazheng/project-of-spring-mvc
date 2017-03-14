package com.zd.dao;

import com.zd.entity.User;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 * Created by zd on 2017/3/13.
 */
public class UserDao {

    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public boolean save(User user) {
        Session session =sessionFactory.getCurrentSession();
        Boolean saveState=true;
        try{
        session.save(user);
        }catch(Exception e){
            saveState=false;
           throw new RuntimeException("save faile"+ e.toString());
    }
        return saveState;
    }
}
