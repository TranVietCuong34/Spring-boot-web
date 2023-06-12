package com.devpro.JavaWeb.repository;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.SaleOrder;

@Repository
public interface ProductRepository extends PagingAndSortingRepository<Product, Integer>{
	
		
}
