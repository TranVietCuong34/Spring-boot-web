package com.devpro.JavaWeb.services.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.services.BaseService;
import com.devpro.JavaWeb.services.PagerData;

@Service
public class CategoriesService extends BaseService<Categories> {

	@Override
	protected Class<Categories> clazz() {
		return Categories.class;
	}
	public PagerData<Categories> searchCategory(ProductSearch searchModel) {
		// khởi tạo câu lệnh
				String sql = "SELECT * FROM tbl_category p WHERE 1=1";

				if (searchModel != null) {

					// tìm kiếm theo category
					if (searchModel.getCategoreisId() != null && !"0".equals(searchModel.getCategoreisId())) {
						sql += " and id = " + searchModel.getCategoreisId();
					}

					// tìm kiếm theo seo
//					if(!StringUtils.isEmpty(searchModel.getSeo())) {
//						sql += " and seo = '" + searchModel.getSeo() + "'";
//					}
				}

				return getEntitiesByNativeSQL(sql,searchModel.getPage());
	}
	
	@Transactional 
	public Categories deleteCategory(Categories categories) {
		Categories categoriesDel = super.getById(categories.getId());
		if(categoriesDel.getStatus() == false) {
			return categoriesDel;
		}
		categoriesDel.setStatus(false);
		return super.saveOrUpdate(categoriesDel);
	}
//	@Transactional
//	public void del(Categories categories) {
//		Categories categories2 = super.getById(categories.getId());
//		super.deleteById(categories2.getId());
//	}
	
	
}
