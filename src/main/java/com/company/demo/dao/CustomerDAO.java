package com.company.demo.dao;

import com.company.demo.entity.Customer;

import java.util.List;

public interface CustomerDAO {
    List<Customer> getCustomers();

    void saveCustomer(Customer customer);

    void updateCustomer(Customer customer);

    Customer getCustomer(int id);

    void deleteCustomer(int id);
}
