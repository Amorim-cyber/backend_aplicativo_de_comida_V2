package com.aplicativo.de.comida.interfaces;

import java.util.List;

import com.aplicativo.de.comida.entities.dao.RestauranteDAO;

public interface InterfaceRestaurante {
	
	public abstract Integer getQtdByAdrRange(String adr, Double range);
	
	public abstract Integer getQtdByAdrRangeRate(String adr, Double range, String rate);
	
	public abstract Integer getQtdByAdrRangeTime(String adr, Double range, Integer time);
	
	public abstract Integer getQtdByAdrTypeRange(String adr, String type, Double range);
	
	public abstract Integer getQtdByAdrTypeRangeRate(String adr, String type, Double range, String rate);
	
	public abstract Integer getQtdByAdrTypeRangeTime(String adr, String type, Double range, Integer time);
	
	public abstract List<RestauranteDAO> getListByAdrRangeRate(String adr, Double range, String rate);
	
	public abstract List<RestauranteDAO> getListByAdrRangeTime(String adr, Double range, Integer time);
	
	public abstract List<RestauranteDAO> getListByAdrTypeRangeRate(String adr, String type, Double range, String rate);
	
	public abstract List<RestauranteDAO> getListByAdrTypeRangeTime(String adr, String type, Double range, Integer time);

}
