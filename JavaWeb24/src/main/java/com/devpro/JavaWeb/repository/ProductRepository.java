package com.devpro.JavaWeb.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.JavaWeb.model.Product;

@Repository
public interface ProductRepository  extends JpaRepository<Product, Integer>{
	void deleteById(Integer id);
}
