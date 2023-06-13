package com.devpro.JavaWeb.repository;

import java.util.List;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.SaleOrder;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>{
//	@Query("select p from tbl_products  p where "
//			+ "CONCAT(p.title , p.short_description, p.price_sale, p.price)"
//			+"LIKE %?1%")
//	public List<Product> findALL(String keyword);
		
}
