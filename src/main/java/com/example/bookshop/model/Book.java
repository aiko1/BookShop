package com.example.bookshop.model;

public class Book {
	private int id;
	private String title;
	private String picture;
	private int price;
	private String definition;

	public Book() {
	}

	public Book(int id, String title, String picture, int price, String def) {
		this.id = id;
		this.title = title;
		this.picture = picture;
		this.price = price;
		this.definition = def;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDefinition() {
		return definition;
	}

	public void setDefinition(String definition) {
		this.definition = definition;
	}
}
