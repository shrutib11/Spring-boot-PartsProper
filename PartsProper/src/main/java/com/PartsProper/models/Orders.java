package com.PartsProper.models;
import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;

@Entity
public class Orders {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "order_generator")
	@SequenceGenerator(name = "order_generator",allocationSize = 1)
	long id;
	String username;
	long prodID;
	int quantity;
	double price;
	Date orderDate;
	public Orders() {
		super();
		this.username = null;
		this.prodID = -1;
		this.quantity = 0;
		this.price = 0;
		this.orderDate = null;
	}
	public Orders(String username, long prodID, int quantity, double price, Date orderDate) {
		super();
		this.username = username;
		this.prodID = prodID;
		this.quantity = quantity;
		this.price = price;
		this.orderDate = orderDate;
	}
	public Orders(long id, String username, long prodID, int quantity, double price, Date orderDate) {
		super();
		this.id = id;
		this.username = username;
		this.prodID = prodID;
		this.quantity = quantity;
		this.price = price;
		this.orderDate = orderDate;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public long getProdID() {
		return prodID;
	}
	public void setProdID(long prodID) {
		this.prodID = prodID;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
}
