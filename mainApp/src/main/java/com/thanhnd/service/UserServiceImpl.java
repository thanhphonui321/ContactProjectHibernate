package com.thanhnd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thanhnd.dao.UserDAO;
import com.thanhnd.domain.User;
import com.thanhnd.exception.BlockedUserException;
import javax.persistence.NoResultException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public void register(User u) {
        // TODO Auto-generated method stub
        userDAO.save(u);

    }

    @Transactional
    public User login(String username, String password) throws BlockedUserException {
        // TODO Auto-generated method stub

        Session session = sessionFactory.getCurrentSession();
        try {
            User user = (User) session.createQuery("from User u where u.loginName =:loginName AND password = :password")
                    .setParameter("loginName", username)
                    .setParameter("password", password)
                    .getSingleResult();
            if (user.getLoginStatus() == UserService.LOGIN_STATUS_BLOCKED) {
                throw new BlockedUserException("Your account has been blocked. Contact to admin please. ");
            }
            return user;
        } catch (NoResultException ex) {
            return null;
        }

    }

    @Transactional
    public List<User> viewAllUser() {
        // TODO Auto-generated method stub
        return userDAO.findAll();
    }

    @Transactional
    public void changeStatusUser(int userId, int status) {
        // TODO Auto-generated method stub
        Session session = sessionFactory.getCurrentSession();
        User u = session.get(User.class, userId);
        u.setLoginStatus(status);
        session.flush();

    }

    @Transactional
    public boolean checkUsername(String username) {

        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("SELECT COUNT(u.loginName) FROM User u WHERE u.loginName = :loginName ");
        query.setParameter("loginName", username);

        Long result = (Long) query.getSingleResult();
        if (result == 1) {
            return false;
        } else {
            return true;
        }
    }

}
