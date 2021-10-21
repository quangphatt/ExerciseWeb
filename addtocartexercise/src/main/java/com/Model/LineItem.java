package com.Model;

import java.io.Serializable;
import java.text.NumberFormat;


public class LineItem implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Product product;
	private int quantity;
	public LineItem(Product product, int quantity) {
		this.product = product;
		this.quantity = quantity;
	}
	public LineItem() {
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public double getTotal() {
		double total = product.getPrice()*quantity;
		return total;
	}
	public String getTotalCurrencyFormat() {
		NumberFormat currency = NumberFormat.getCurrencyInstance();
		return currency.format(this.getTotal());
	}
	

}
