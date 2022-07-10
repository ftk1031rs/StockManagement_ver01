package com.example.demo.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.ProductEntity;
import com.example.demo.entity.StockKeyId;

public interface StockMstRepository extends JpaRepository<ProductEntity, StockKeyId> {

	List<ProductEntity> search(String productId, String product);
}