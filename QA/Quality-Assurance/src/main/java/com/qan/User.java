package com.qan;


public class User {
    private int id;
    private String name;
    private String code;
    private String supplier;
    private String date;
    private String quantity;
	public User(int id, String name, String code, String supplier, String date, String quantity) {
		super();
		this.id = id;
		this.name = name;
		this.code = code;
		this.supplier = supplier;
		this.date = date;
		this.quantity = quantity;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getSupplier() {
		return supplier;
	}
	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
    
    
	
    
	


}
