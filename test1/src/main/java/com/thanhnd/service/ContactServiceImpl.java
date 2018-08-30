package com.thanhnd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thanhnd.dao.ContactDAO;
import com.thanhnd.domain.Contact;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ContactServiceImpl implements ContactService {

    @Autowired
    private ContactDAO contactDAO;

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public void save(Contact c) {
        contactDAO.save(c);

    }

    @Transactional
    public void update(Contact c) {
        contactDAO.update(c);

    }

    @Transactional
    public void delete(int contactId) {
        contactDAO.delete(contactId);

    }

    @Transactional
    public void delete(int[] contactIds) {
        for (int i = 0; i < contactIds.length; i++) {
            delete(contactIds[i]);
        }

    }

    @Transactional
    public List<Contact> findAllContact(int userId) {
        return contactDAO.findByProperty("userId", userId);
    }

    @Transactional
    public List<Contact> findSearchContact(int userId, String txt) {
        Session session = sessionFactory.getCurrentSession();
        Query myQuery = session.createQuery("FROM Contact c WHERE c.userId = :userId AND (c.name LIKE :searchValue OR c.email LIKE :searchValue OR c.address LIKE :searchValue OR c.remark LIKE :searchValue)");
        myQuery.setParameter("userId", userId)
                .setParameter("searchValue", "%"+txt+"%");
        return myQuery.getResultList();
    }
  
    @Transactional
    public Contact findById(int contactId) {
        return contactDAO.findById(contactId);
    }

}
