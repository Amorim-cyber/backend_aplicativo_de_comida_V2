package com.aplicativo.de.comida.mapper;

import com.aplicativo.de.comida.entities.Restaurante;
import com.aplicativo.de.comida.entities.dao.RestauranteDAO;

public class Mapper {
	
	public static RestauranteDAO toDAO(Restaurante restaurante) {
		
		RestauranteDAO dao = new RestauranteDAO();
		
		dao.setId(restaurante.getId());
		dao.setSrcImg(restaurante.getSrcImg());
		dao.setName(restaurante.getName());
		dao.setRate(restaurante.getRate());
		dao.setType(restaurante.getType());
		dao.setRange(restaurante.getRange());
		dao.setTime(restaurante.getTime());
		dao.setShipment(restaurante.getShipment());
		dao.setDiscount(restaurante.getDiscount());
		dao.setUrl(restaurante.getUrl());
		dao.setAddress(restaurante.getAddress());
		dao.setLatitude(restaurante.getLatitude());
		dao.setLongitude(restaurante.getLongitude());
		return dao;
		
	}
	
	public static Restaurante toEntity(RestauranteDAO dao) {
		
		Restaurante restaurante = new Restaurante();
		
		restaurante.setId(dao.getId());
		restaurante.setSrcImg(dao.getSrcImg());
		restaurante.setName(dao.getName());
		restaurante.setRate(dao.getRate());
		restaurante.setType(dao.getType());
		restaurante.setRange(dao.getRange());
		restaurante.setTime(dao.getTime());
		restaurante.setShipment(dao.getShipment());
		restaurante.setDiscount(dao.getDiscount());
		restaurante.setUrl(dao.getUrl());
		restaurante.setAddress(dao.getAddress());
		restaurante.setLatitude(dao.getLatitude());
		restaurante.setLongitude(dao.getLongitude());
		return restaurante;
	}

}
