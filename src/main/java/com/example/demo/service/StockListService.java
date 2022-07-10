package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.repository.StockMstRepository;
import com.example.demo.repository.StockMstRepositoryImpl;
import com.example.demo.entity.ProductEntity;

@Service
public class StockListService {
	
	@Autowired
	StockMstRepository repository;
	@Autowired
	StockMstRepositoryImpl repositoryCustom;

	public List<ProductEntity> search(String productId, String product) {
		List<ProductEntity> result;
		if ("".equals(productId) && "".equals(product)) {
			result = repository.findAll();
		} else {
			result = repositoryCustom.search(productId, product);
		}
		return result;
	}

}
