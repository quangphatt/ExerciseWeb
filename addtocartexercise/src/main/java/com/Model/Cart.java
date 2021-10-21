package com.Model;

import java.io.Serializable;
import java.util.ArrayList;


public class Cart implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ArrayList<LineItem> list;
	public ArrayList<LineItem> getList() {
		return list;
	}
	public void setList(ArrayList<LineItem> list) {
		this.list = list;
	}
	public Cart() {
		list=new ArrayList<LineItem>();
	}
	public Cart(ArrayList<LineItem> list) {
		this.list = list;
	}
	public void addItem(LineItem item) {
		String code = item.getProduct().getCode();
		int quantity = item.getQuantity();
		for (int i = 0; i < list.size(); i++) {
			LineItem lineItem =list.get(i);
			if (lineItem.getProduct().getCode().equals(code)) {
				lineItem.setQuantity(quantity);
				return;
			}
		}
		list.add(item);
	}
	public void removeItem(LineItem item) {
		String code = item.getProduct().getCode();
		for (int i = 0; i < list.size(); i++) {
			LineItem lineItem = list.get(i);
			if (lineItem.getProduct().getCode().equals(code)) {
				list.remove(i);
				return;
			}
		}
	}
	
}
