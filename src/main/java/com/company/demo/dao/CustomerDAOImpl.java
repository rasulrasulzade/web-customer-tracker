package com.company.demo.dao;

import com.company.demo.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerDAOImpl implements CustomerDAO{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Customer> getCustomers() {
        Session session = sessionFactory.getCurrentSession();
        //get customers and sort by firstName
        Query<Customer> theQuery = session.createQuery("from Customer order by firstName",Customer.class);
        return theQuery.getResultList();
    }

    @Override
    public void saveCustomer(Customer customer) {
        Session session = sessionFactory.getCurrentSession();
        //if customer has id update(UPDATE) else save as new customer(INSERT)
        session.saveOrUpdate(customer);
    }

    @Override
    public void updateCustomer(Customer customer) {
        Session session = sessionFactory.getCurrentSession();
        session.update(customer);
    }

    @Override
    public Customer getCustomer(int id) {
        Session session = sessionFactory.getCurrentSession();
        return session.get(Customer.class, id);
    }

    @Override
    public void deleteCustomer(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("delete from Customer where id=:customerId");
        query.setParameter("customerId",id);
        query.executeUpdate();
    }
}
