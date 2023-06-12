package com.devpro.JavaWeb.services.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.model.Categories;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.SaleOrder;
import com.devpro.JavaWeb.model.SaleOrderProducts;
import com.devpro.JavaWeb.repository.SalerOrderRepository;
import com.devpro.JavaWeb.services.BaseService;
import com.devpro.JavaWeb.services.PagerData;

@Service
public class SaleOrderService extends BaseService<SaleOrder> {

	@Autowired
	private SaleOrderProductsService saleOrderProductsService;

	@Transactional
	public void createSaleOrder(SaleOrder saleOrder, List<SaleOrderProducts> saleOrderProductsLst) {
		SaleOrder soSaved = super.saveOrUpdate(saleOrder);

		// lấy sản phẩm trong giỏ hàng
		for (SaleOrderProducts saleOrderProducts : saleOrderProductsLst) {
			saleOrderProducts.setSaleOrder(soSaved);
			saleOrderProductsService.saveOrUpdate(saleOrderProducts);
		}
		
	}

	@Override
	protected Class<SaleOrder> clazz() {
		return SaleOrder.class;
	}

	public PagerData<SaleOrder> searchSaleOrder(ProductSearch searchModel) {
		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_saleorder p WHERE 1=1";

		// tìm kiếm theo title và description
		if (!org.springframework.util.StringUtils.isEmpty(searchModel.getKeyword())) {
			sql += " and (p.customer_name like '%" + searchModel.getKeyword() + "%'" + " or p.customer_address like '%"
					+ searchModel.getKeyword() + "%'" + " or p.customer_phone like '%" + searchModel.getKeyword() + "%'"
					+ " or p.cutomer_email like '%" + searchModel.getKeyword() + "%')";
		}

		return getEntitiesByNativeSQL(sql, searchModel.getPage());
	}


}
