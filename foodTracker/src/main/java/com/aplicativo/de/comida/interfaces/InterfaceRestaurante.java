package com.aplicativo.de.comida.interfaces;

import java.util.List;

import com.aplicativo.de.comida.entities.dao.RestauranteDAO;

public interface InterfaceRestaurante {
	
	public abstract Integer getQtdByAdrTypeRange(String adr, String type, Double range);
	
	public abstract Integer getQtdByAdrTypeRangeRate(String adr, String type, Double range, String rate);
	
	public abstract Integer getQtdByAdrTypeRangeTime(String adr, String type, Double range, String time);
	
	public abstract List<RestauranteDAO> getListByAdrTypeRangeRate(String adr, String type, Double range, String rate);
	
	public abstract List<RestauranteDAO> getListByAdrTypeRangeTime(String adr, String type, Double range, String time);

}
