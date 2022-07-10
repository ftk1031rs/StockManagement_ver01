package com.example.demo.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="PRODUCT_MST")
@IdClass(value=StockKeyId.class)
public class ProductEntity {

	/** 品名マスタ */

	/** 品名ID */
	@Id
	@Column(name="PRODUCT_ID")
	@Getter
	@Setter
	private String productId;

	/** 品名 */
	@Column(name="PRODUCT")
	@Getter
	@Setter
	private String product;
	
	/** 登録日付 */
	@Column(name="CREATE_DATE")
	@Getter
	@Setter
	private Date createDate;
	
	/** 登録者 */
	@Column(name="CREATER")
	@Getter
	@Setter
	private String creater;
	
	/** 登録プログラムID */
	@Column(name="CREATE_PROGRAM")
	@Getter
	@Setter
	private String createProgram;
	
	/** 更新日付 */
	@Column(name="UPDATE_DATE")
	@Getter
	@Setter
	private Date updateDate;

	/** 更新者 */
	@Column(name="UPDATER")
	@Getter
	@Setter
	private String updater;
	
	/** 更新プログラムID */
	@Column(name="UPDATE_PROGRAM")
	@Getter
	@Setter
	private String updateProgram;
	
	/** 更新回数 */
	@Column(name="UPDATE_COUNT")
	@Getter
	@Setter
	private Long updateCount;
	
	/** 削除フラグ */
	@Column(name="DELETE_FLAG")
	@Getter
	@Setter
	private Long deleteFlag;

	/** 品名マスタ */

	/** 品名ID */
	@Getter
	@Setter
	@OneToOne
	@JoinColumn(name="PRODUCT_ID", insertable=false, updatable=false)
	private StocktEntity stockEntity;
}
