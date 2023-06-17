package com.devpro.JavaWeb.services;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.JavaWeb.model.Product;

@Repository
public interface  Reporitory extends JpaRepository<Product, Integer> {

}
