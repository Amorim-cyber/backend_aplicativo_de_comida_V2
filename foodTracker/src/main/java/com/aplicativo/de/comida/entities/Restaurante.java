package com.aplicativo.de.comida.entities;

public class Restaurante {
	
	private Long id;
	private String srcImg;
	private String name;
	private String rate;
	private String type;
	private Double range;
	private String time;
	private String shipment;
	private String discount;
	private String url;
	private String address;
	
	public Restaurante(Long id, String srcImg,
			String name, String rate,
			String type, Double range, String time,
			String shipment, String discount,
			String url, String address) {
		this.id = id;
		this.srcImg = srcImg;
		this.name = name;
		this.rate = rate;
		this.type = type;
		this.range = range;
		this.time = time;
		this.shipment = shipment;
		this.discount = discount;
		this.url = url;
		this.address = address;
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getSrcImg() {
		return srcImg;
	}
	public void setSrcImg(String srcImg) {
		this.srcImg = srcImg;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Double getRange() {
		return range;
	}
	public void setRange(Double range) {
		this.range = range;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getShipment() {
		return shipment;
	}
	public void setShipment(String shipment) {
		this.shipment = shipment;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	

}
