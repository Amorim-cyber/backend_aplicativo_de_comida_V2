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
		
		return dao;
		
	}

}
