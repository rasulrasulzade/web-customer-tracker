package com.company.demo.service;

import com.company.demo.entity.Customer;

import java.util.List;

public interface CustomerService {
    List<Customer> getCustomers();

    void saveCustomer(Customer customer);

    void updateCustomer(Customer customer);

    Customer getCustomer(int id);

    void deleteCustomer(int id);
}
