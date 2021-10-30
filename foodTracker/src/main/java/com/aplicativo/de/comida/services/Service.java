package com.aplicativo.de.comida.services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.aplicativo.de.comida.dbConnection.DBManager;
import com.aplicativo.de.comida.entities.dao.RestauranteDAO;
import com.aplicativo.de.comida.interfaces.InterfaceRestaurante;


public class Service implements InterfaceRestaurante{
	
	private Connection conexao;

	@Override
	public Integer getQtdByAdrTypeRange(String adr, String type, Double range) {
		PreparedStatement stmt= null;
		ResultSet rs= null;
		Integer result = 0;
		
		
		try {
			conexao= DBManager.obterConexao();
			
			String sql = "SELECT COUNT(*) \"QTD_RESTAURANTE\" FROM T_RESTAURANTE WHERE \r\n"
					+ "NM_END_ORI = ? AND\r\n"
					+ "DS_TIPO_REST = ? AND\r\n"
					+ "NR_DIST_REST <= ?;";
			stmt= conexao.prepareStatement(sql);
			stmt.setString(1, adr);
			stmt.setString(2, type);
			stmt.setDouble(3, range);
			
			rs= stmt.executeQuery();
			
			result = rs.getInt("QTD_RESTAURANTE");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				stmt.close();conexao.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}

	@Override
	public Integer getQtdByAdrTypeRangeRate(String adr, String type, Double range, String rate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Integer getQtdByAdrTypeRangeTime(String adr, String type, Double range, String time) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RestauranteDAO> getListByAdrTypeRangeRate(String adr, String type, Double range, String rate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RestauranteDAO> getListByAdrTypeRangeTime(String adr, String type, Double range, String time) {
		// TODO Auto-generated method stub
		return null;
	}

}


/* SELECT COUNT(*) "QTD_RESTAURANTE" FROM T_RESTAURANTE WHERE 
NM_END_ORI = 'Rua Desembarbador Roberto medeiros, 70' AND
DS_TIPO_REST = 'Pizza' AND
NR_DIST_REST <= 1 AND 
(TO_NUMBER(NR_RAT_REST,'9.9') = 5.0 OR
TO_NUMBER(NR_RAT_REST,'9.9') > 4.5); */
