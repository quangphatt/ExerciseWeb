package com.Model;

import java.io.Serializable;

import javax.persistence.*;

import java.util.Base64;

/**
 * The persistent class for the "Food" database table.
 * 
 */
@Entity
@Table(name="\"Food\"", schema = "project")
@NamedQuery(name="Food.findAll", query="SELECT f FROM Food f")
public class Food implements Serializable {

	private static final long serialVersionUID = -2596243363268177626L;

	@Id
	private Integer id;

	private String description;

	@Column(name="food_type")
	private String foodType;

	private byte[] image;

	private String name;

	private Integer price;

	public Food() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFoodType() {
		return this.foodType;
	}

	public void setFoodType(String foodType) {
		this.foodType = foodType;
	}

	public byte[] getImage() {
		return this.image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}
	public String GetStringImage() {
		String base64 = null;
		try {
			base64 = new String(Base64.getEncoder().encodeToString(this.image));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return base64;
		
	}

}