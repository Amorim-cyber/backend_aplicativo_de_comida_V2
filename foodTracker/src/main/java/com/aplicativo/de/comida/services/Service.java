package com.aplicativo.de.comida.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.aplicativo.de.comida.dbConnection.DBManager;
import com.aplicativo.de.comida.entities.Restaurante;
import com.aplicativo.de.comida.entities.dao.RestauranteDAO;
import com.aplicativo.de.comida.interfaces.InterfaceRestaurante;
import com.aplicativo.de.comida.mapper.Mapper;


public class Service implements InterfaceRestaurante{
	
	private Connection conexao;
	
	@Override
	public Integer getQtdByAdrRange(String adr, Double range) {
		PreparedStatement stmt= null;
		Integer result = 0;
		ResultSet rs = null;
		
		try {
			conexao= DBManager.obterConexao();
			String sql = "SELECT * FROM T_RESTAURANTE WHERE"
					+ " NM_END_ORI = ? AND"
					+ " NR_DIST_REST <= ? AND"
					+ " NR_DIST_REST > ?";
			stmt= conexao.prepareStatement(sql);
			stmt.setString(1, adr);
			stmt.setDouble(2, range);
			stmt.setDouble(3, range-1);
			rs = stmt.executeQuery();
			while(rs.next()) {
				result += 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				stmt.close();
				rs.close();
				conexao.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@Override
	public Integer getQtdByAdrRangeRate(String adr, Double range, String rate) {
		PreparedStatement stmt= null;
		Integer result = 0;
		ResultSet rs = null;
		
		try {
			conexao= DBManager.obterConexao();
			
			String sql = "SELECT * FROM T_RESTAURANTE WHERE"
					+ " NM_END_ORI = ? AND"
					+ " NR_DIST_REST <= ? AND"
					+ " NR_DIST_REST > ? AND"
					+ " NR_RAT_REST <= ? AND"
					+ " NR_RAT_REST > ?";
			stmt= conexao.prepareStatement(sql);
			stmt.setString(1, adr);
			stmt.setDouble(2, range);
			stmt.setDouble(3, range-1);
			stmt.setDouble(4, Double.parseDouble(rate));
			stmt.setDouble(5, Double.parseDouble(rate)-0.5); 
			
			rs = stmt.executeQuery();
			while(rs.next()) {
				result += 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				stmt.close();
				rs.close();
				conexao.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@Override
	public Integer getQtdByAdrRangeTime(String adr, Double range, Integer time) {
		PreparedStatement stmt= null;
		Integer result = 0;
		ResultSet rs = null;
		
		try {
			conexao= DBManager.obterConexao();
			
			String sql;
			
			if(time > 60) {
				sql = "SELECT * FROM T_RESTAURANTE WHERE"
						+ " NM_END_ORI = ? AND"
						+ " NR_DIST_REST <= ? AND"
						+ " NR_DIST_REST > ? AND"
						+ " DS_PRAZO_REST > ?";
				
				stmt= conexao.prepareStatement(sql);
				stmt.setString(1, adr);
				stmt.setDouble(2, range);
				stmt.setDouble(3, range-1);
				stmt.setDouble(4, time);
				
			}else {
				sql = "SELECT * FROM T_RESTAURANTE WHERE"
						+ " NM_END_ORI = ? AND"
						+ " NR_DIST_REST <= ? AND"
						+ " NR_DIST_REST > ? AND"
						+ " DS_PRAZO_REST <= ? AND"
						+ " DS_PRAZO_REST > ?";
				
				stmt= conexao.prepareStatement(sql);
				stmt.setString(1, adr);
				stmt.setDouble(2, range);
				stmt.setDouble(3, range-1);
				stmt.setDouble(4, time);
				stmt.setDouble(5, time - 15);
			}
			
			rs = stmt.executeQuery();
			while(rs.next()) {
				result += 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				stmt.close();
				rs.close();
				conexao.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}

	@Override
	public Integer getQtdByAdrTypeRange(String adr, String type, Double range) {
		PreparedStatement stmt= null;
		Integer result = 0;
		ResultSet rs = null;
		
		try {
			conexao= DBManager.obterConexao();
			String sql = "SELECT * FROM T_RESTAURANTE WHERE"
					+ " NM_END_ORI = ? AND"
					+ " DS_TIPO_REST = ? AND"
					+ " NR_DIST_REST <= ? AND"
					+ " NR_DIST_REST > ?";
			stmt= conexao.prepareStatement(sql);
			stmt.setString(1, adr);
			stmt.setString(2, type);
			stmt.setDouble(3, range);
			stmt.setDouble(4, range-1);
			rs = stmt.executeQuery();
			while(rs.next()) {
				result += 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				stmt.close();
				rs.close();
				conexao.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}

	@Override
	public Integer getQtdByAdrTypeRangeRate(String adr, String type, Double range, String rate) {
		PreparedStatement stmt= null;
		Integer result = 0;
		ResultSet rs = null;
		
		try {
			conexao= DBManager.obterConexao();
			
			String sql = "SELECT * FROM T_RESTAURANTE WHERE"
					+ " NM_END_ORI = ? AND"
					+ " NR_DIST_REST <= ? AND"
					+ " NR_DIST_REST > ? AND"
					+ " DS_TIPO_REST = ? AND"
					+ " NR_RAT_REST <= ? AND"
					+ " NR_RAT_REST > ?";
			stmt= conexao.prepareStatement(sql);
			stmt.setString(1, adr);
			stmt.setDouble(2, range);
			stmt.setDouble(3, range-1);
			stmt.setString(4, type);
			stmt.setDouble(5, Double.parseDouble(rate));
			stmt.setDouble(6, Double.parseDouble(rate)-0.5); 
			System.out.println(Double.parseDouble(rate)-0.5);
			rs = stmt.executeQuery();
			while(rs.next()) {
				result += 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				stmt.close();
				rs.close();
				conexao.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}

	@Override
	public Integer getQtdByAdrTypeRangeTime(String adr, String type, Double range, Integer time) {
		PreparedStatement stmt= null;
		Integer result = 0;
		ResultSet rs = null;
		
		try {
			conexao= DBManager.obterConexao();
			
			String sql;
			
			if(time > 60) {
				sql = "SELECT * FROM T_RESTAURANTE WHERE"
						+ " NM_END_ORI = ? AND"
						+ " DS_TIPO_REST = ? AND"
						+ " NR_DIST_REST <= ? AND"
						+ " NR_DIST_REST > ? AND"
						+ " DS_PRAZO_REST > ?";
				
				stmt= conexao.prepareStatement(sql);
				stmt.setString(1, adr);
				stmt.setString(2, type);
				stmt.setDouble(3, range);
				stmt.setDouble(4, range-1);
				stmt.setDouble(5, time);
				
			}else {
				sql = "SELECT * FROM T_RESTAURANTE WHERE"
						+ " NM_END_ORI = ? AND"
						+ " DS_TIPO_REST = ? AND"
						+ " NR_DIST_REST <= ? AND"
						+ " NR_DIST_REST > ? AND"
						+ " DS_PRAZO_REST <= ? AND"
						+ " DS_PRAZO_REST > ?";
				
				stmt= conexao.prepareStatement(sql);
				stmt.setString(1, adr);
				stmt.setString(2, type);
				stmt.setDouble(3, range);
				stmt.setDouble(4, range-1);
				stmt.setDouble(5, time);
				stmt.setDouble(6, time - 15);
			}
			
			rs = stmt.executeQuery();
			while(rs.next()) {
				result += 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				stmt.close();
				rs.close();
				conexao.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	@Override
	public List<RestauranteDAO> getListByAdrRangeRate(String adr, Double range, String rate) {
		PreparedStatement stmt= null;
		List<RestauranteDAO> listaDAO = new ArrayList<RestauranteDAO>();
		ResultSet rs = null;
		
		try {
			conexao= DBManager.obterConexao();
			
			String sql = "SELECT * FROM T_RESTAURANTE WHERE"
					+ " NM_END_ORI = ? AND"
					+ " NR_DIST_REST <= ? AND"
					+ " NR_DIST_REST > ? AND"
					+ " NR_RAT_REST <= ? AND"
					+ " NR_RAT_REST > ?";
			stmt= conexao.prepareStatement(sql);
			stmt.setString(1, adr);
			stmt.setDouble(2, range);
			stmt.setDouble(3, range-1);
			stmt.setDouble(4, Double.parseDouble(rate));
			stmt.setDouble(5, Double.parseDouble(rate)-0.5); 
			
			rs = stmt.executeQuery();
			while(rs.next()) {
				Long id = rs.getLong("ID_REST");
				String img = rs.getString("DS_IMG_REST");
				String nome = rs.getString("NM_REST");
				String rates = rs.getString("NR_RAT_REST");
				String tipo = rs.getString("DS_TIPO_REST");
				Double distancia = rs.getDouble("NR_DIST_REST");
				Integer prazo = rs.getInt("DS_PRAZO_REST");
				String frete = rs.getString("DS_FRETE_REST");
				String desconto = rs.getString("DS_DESC_REST");
				String url = rs.getString("DS_URL_REST");
				String endereco = rs.getString("NM_END_ORI");
				String latitude = rs.getString("NR_LATITUDE").replace(",", ".");
				String longitude = rs.getString("NR_LONGITUDE").replace(",", ".");
				
				Restaurante restaurante = 
				new Restaurante(id, img,
						nome, rates,
						tipo, distancia, prazo,
						frete, desconto,
						url, endereco, latitude, longitude);
				
				listaDAO.add(Mapper.toDAO(restaurante));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				stmt.close();
				rs.close();
				conexao.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listaDAO;
	}

	@Override
	public List<RestauranteDAO> getListByAdrRangeTime(String adr, Double range, Integer time) {
		PreparedStatement stmt= null;
		List<RestauranteDAO> listaDAO = new ArrayList<RestauranteDAO>();
		ResultSet rs = null;
		
		String sql;
		
		try {
			conexao= DBManager.obterConexao();
			if(time > 60) {
				sql = "SELECT * FROM T_RESTAURANTE WHERE"
						+ " NM_END_ORI = ? AND"
						+ " NR_DIST_REST <= ? AND"
						+ " NR_DIST_REST > ? AND"
						+ " DS_PRAZO_REST > ?";
				
				stmt= conexao.prepareStatement(sql);
				stmt.setString(1, adr);
				stmt.setDouble(2, range);
				stmt.setDouble(3, range-1);
				stmt.setDouble(4, time);
				
			}else {
				sql = "SELECT * FROM T_RESTAURANTE WHERE"
						+ " NM_END_ORI = ? AND"
						+ " NR_DIST_REST <= ? AND"
						+ " NR_DIST_REST > ? AND"
						+ " DS_PRAZO_REST <= ? AND"
						+ " DS_PRAZO_REST > ?";
				
				stmt= conexao.prepareStatement(sql);
				stmt.setString(1, adr);
				stmt.setDouble(2, range);
				stmt.setDouble(3, range-1);
				stmt.setDouble(4, time);
				stmt.setDouble(5, time - 15);
			}
			rs = stmt.executeQuery();
			while(rs.next()) {
				Long id = rs.getLong("ID_REST");
				String img = rs.getString("DS_IMG_REST");
				String nome = rs.getString("NM_REST");
				String rate = rs.getString("NR_RAT_REST");
				String tipo = rs.getString("DS_TIPO_REST");
				Double distancia = rs.getDouble("NR_DIST_REST");
				Integer prazo = rs.getInt("DS_PRAZO_REST");
				String frete = rs.getString("DS_FRETE_REST");
				String desconto = rs.getString("DS_DESC_REST");
				String url = rs.getString("DS_URL_REST");
				String endereco = rs.getString("NM_END_ORI");
				String latitude = rs.getString("NR_LATITUDE").replace(",", ".");
				String longitude = rs.getString("NR_LONGITUDE").replace(",", ".");
				
				Restaurante restaurante = 
				new Restaurante(id, img,
						nome, rate,
						tipo, distancia, prazo,
						frete, desconto,
						url, endereco,latitude,longitude);
				
				listaDAO.add(Mapper.toDAO(restaurante));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				stmt.close();
				rs.close();
				conexao.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listaDAO;
	}

	@Override
	public List<RestauranteDAO> getListByAdrTypeRangeRate(String adr, String type, Double range, String rate) {
		PreparedStatement stmt= null;
		List<RestauranteDAO> listaDAO = new ArrayList<RestauranteDAO>();
		ResultSet rs = null;
		
		try {
			conexao= DBManager.obterConexao();
			
			String sql = "SELECT * FROM T_RESTAURANTE WHERE"
					+ " NM_END_ORI = ? AND"
					+ " NR_DIST_REST <= ? AND"
					+ " NR_DIST_REST > ? AND"
					+ " DS_TIPO_REST = ? AND"
					+ " NR_RAT_REST <= ? AND"
					+ " NR_RAT_REST > ?";
			stmt= conexao.prepareStatement(sql);
			stmt.setString(1, adr);
			stmt.setDouble(2, range);
			stmt.setDouble(3, range-1);
			stmt.setString(4, type);
			stmt.setDouble(5, Double.parseDouble(rate));
			stmt.setDouble(6, Double.parseDouble(rate)-0.5); 
			
			rs = stmt.executeQuery();
			while(rs.next()) {
				Long id = rs.getLong("ID_REST");
				String img = rs.getString("DS_IMG_REST");
				String nome = rs.getString("NM_REST");
				String rates = rs.getString("NR_RAT_REST");
				String tipo = rs.getString("DS_TIPO_REST");
				Double distancia = rs.getDouble("NR_DIST_REST");
				Integer prazo = rs.getInt("DS_PRAZO_REST");
				String frete = rs.getString("DS_FRETE_REST");
				String desconto = rs.getString("DS_DESC_REST");
				String url = rs.getString("DS_URL_REST");
				String endereco = rs.getString("NM_END_ORI");
				String latitude = rs.getString("NR_LATITUDE").replace(",", ".");
				String longitude = rs.getString("NR_LONGITUDE").replace(",", ".");
				
				Restaurante restaurante = 
				new Restaurante(id, img,
						nome, rates,
						tipo, distancia, prazo,
						frete, desconto,
						url, endereco, latitude, longitude);
				
				listaDAO.add(Mapper.toDAO(restaurante));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				stmt.close();
				rs.close();
				conexao.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listaDAO;
	}

	@Override
	public List<RestauranteDAO> getListByAdrTypeRangeTime(String adr, String type, Double range, Integer time) {
		PreparedStatement stmt= null;
		List<RestauranteDAO> listaDAO = new ArrayList<RestauranteDAO>();
		ResultSet rs = null;
		
		try {
			conexao= DBManager.obterConexao();
			
			String sql;
			
			if(time > 60) {
				sql = "SELECT * FROM T_RESTAURANTE WHERE"
						+ " NM_END_ORI = ? AND"
						+ " DS_TIPO_REST = ? AND"
						+ " NR_DIST_REST <= ? AND"
						+ " NR_DIST_REST > ? AND"
						+ " DS_PRAZO_REST > ?";
				
				stmt= conexao.prepareStatement(sql);
				stmt.setString(1, adr);
				stmt.setString(2, type);
				stmt.setDouble(3, range);
				stmt.setDouble(4, range-1);
				stmt.setDouble(5, time);
				
			}else {
				sql = "SELECT * FROM T_RESTAURANTE WHERE"
						+ " NM_END_ORI = ? AND"
						+ " DS_TIPO_REST = ? AND"
						+ " NR_DIST_REST <= ? AND"
						+ " NR_DIST_REST > ? AND"
						+ " DS_PRAZO_REST <= ? AND"
						+ " DS_PRAZO_REST > ?";
				
				stmt= conexao.prepareStatement(sql);
				stmt.setString(1, adr);
				stmt.setString(2, type);
				stmt.setDouble(3, range);
				stmt.setDouble(4, range-1);
				stmt.setDouble(5, time);
				stmt.setDouble(6, time - 15);
			}
			
			rs = stmt.executeQuery();
			while(rs.next()) {
				Long id = rs.getLong("ID_REST");
				String img = rs.getString("DS_IMG_REST");
				String nome = rs.getString("NM_REST");
				String rate = rs.getString("NR_RAT_REST");
				String tipo = rs.getString("DS_TIPO_REST");
				Double distancia = rs.getDouble("NR_DIST_REST");
				Integer prazo = rs.getInt("DS_PRAZO_REST");
				String frete = rs.getString("DS_FRETE_REST");
				String desconto = rs.getString("DS_DESC_REST");
				String url = rs.getString("DS_URL_REST");
				String endereco = rs.getString("NM_END_ORI");
				String latitude = rs.getString("NR_LATITUDE").replace(",", ".");
				String longitude = rs.getString("NR_LONGITUDE").replace(",", ".");
				
				Restaurante restaurante = 
				new Restaurante(id, img,
						nome, rate,
						tipo, distancia, prazo,
						frete, desconto,
						url, endereco, latitude, longitude);
				
				listaDAO.add(Mapper.toDAO(restaurante));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				stmt.close();
				rs.close();
				conexao.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return listaDAO;
	}

	

	

}
