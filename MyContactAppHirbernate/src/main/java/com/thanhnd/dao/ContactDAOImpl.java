package com.thanhnd.dao;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thanhnd.domain.Contact;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

@Repository
public class ContactDAOImpl implements ContactDAO {


    @Autowired
    private SessionFactory sessionFactory;

    public void save(Contact c) {
        // TODO Auto-generated method stub
        sessionFactory.getCurrentSession().save(c);
    }

    public void update(Contact newContact) {
        // TODO Auto-generated method stub
        Session session = sessionFactory.getCurrentSession();
        Contact currentContact = session.byId(Contact.class).load(newContact.getContactId());
        currentContact.setName(newContact.getName());
        currentContact.setPhone(newContact.getPhone());
        currentContact.setEmail(newContact.getEmail());
        currentContact.setAddress(newContact.getAddress());
        currentContact.setRemark(newContact.getRemark());
        session.flush();

    }

    public void delete(Integer contactId) {
        sessionFactory.getCurrentSession().delete(findById(contactId));

    }


    public Contact findById(Integer contactId) {
        return sessionFactory.getCurrentSession().get(Contact.class, contactId);
    }


    public List<Contact> findAll() {
        // TODO Auto-generated method stub
        return sessionFactory.getCurrentSession().createQuery("from Contact").getResultList();
    }


    public List<Contact> findByProperty(String property, Object value) {
        // TODO Auto-generated method stub
        Session session = sessionFactory.getCurrentSession();
        String query = "from Contact c where c."+property+"=:value";
        List<Contact> list = session.createQuery(query).setParameter("value", value)
                .getResultList();
        return list;
    }


}
