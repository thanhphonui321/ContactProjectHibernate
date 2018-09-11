package com.thanhnd.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.thanhnd.domain.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void save(User u) {
        sessionFactory.getCurrentSession().save(u);
    }

    public void update(User newUser) {
        sessionFactory.getCurrentSession().update(newUser);
    }

    public void delete(Integer userId) {
        sessionFactory.getCurrentSession().delete(userId);

    }

    public User findById(Integer userId) {
        return sessionFactory.getCurrentSession().get(User.class, userId);
    }

    public List<User> findAll() {
        return sessionFactory.getCurrentSession().createQuery("from User u where u.role = 2").getResultList();
    }

    public List<User> findByProperty(String property, Object value) {
        // TODO Auto-generated method stub
        Session session = sessionFactory.getCurrentSession();
        String query = "from User u where u." + property + "=:value";
        List<User> list = session.createQuery(query).setParameter("value", value)
                .getResultList();
        return list;
    }

}
