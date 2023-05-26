package com.devpro.JavaWeb.services.impl;

import java.util.List;

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
	
}
