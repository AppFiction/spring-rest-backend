package com.takeme.app.backend.entities;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private String type;
	private String name;
	private Integer providerId;
	private Integer categoryId;
	private String orderType;
	private String description;
	private Date createdDate;
	private Date updatedDate;
	private Integer rentPricePerHour;
	private Integer rentPricePerDay;
	private Integer minTimeForRent;
	private Integer salePrice;
	private String productStatusForSale;
	private String comments;

	public Product() {
	}

	public Product(Integer id, String type, String name, Integer providerId, Integer categoryId,
			String orderType, String description, Date createdDate, Date updatedDate, Integer rentPricePerHour,
			Integer rentPricePerDay, Integer minTimeForRent, Integer salePrice, String productStatusForSale,
			String comments) {
		super();
		this.id = id;
		this.type = type;
		this.name = name;
		this.providerId = providerId;
		this.categoryId = categoryId;
		this.orderType = orderType;
		this.description = description;
		this.createdDate = createdDate;
		this.updatedDate = updatedDate;
		this.rentPricePerHour = rentPricePerHour;
		this.rentPricePerDay = rentPricePerDay;
		this.minTimeForRent = minTimeForRent;
		this.salePrice = salePrice;
		this.productStatusForSale = productStatusForSale;
		this.comments = comments;
	}

	public Integer getId() {
		return id;
	}

	public String getType() {
		return type;
	}

	public String getName() {
		return name;
	}

	public Integer getProviderId() {
		return providerId;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public String getOrderType() {
		return orderType;
	}

	public String getDescription() {
		return description;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public Date getUpdatedDate() {
		return updatedDate;
	}

	public Integer getRentPricePerHour() {
		return rentPricePerHour;
	}

	public Integer getRentPricePerDay() {
		return rentPricePerDay;
	}

	public Integer getMinTimeForRent() {
		return minTimeForRent;
	}

	public Integer getSalePrice() {
		return salePrice;
	}

	public String getProductStatusForSale() {
		return productStatusForSale;
	}

	public String getComments() {
		return comments;
	}

}
