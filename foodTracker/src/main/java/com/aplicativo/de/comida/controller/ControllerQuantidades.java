package com.aplicativo.de.comida.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aplicativo.de.comida.entities.Restaurante;
import com.aplicativo.de.comida.entities.dao.RestauranteDAO;
import com.aplicativo.de.comida.mapper.Mapper;

@WebServlet("/quantidadeRestaurantes")
public class ControllerQuantidades extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private static Restaurante restaurante;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String endereco = request.getParameter("endereco");
		Double distancia = 
		Double.parseDouble(request.getParameter("inlineRadioOptions").split("-")[1].replace(" km", ""));
		
		RestauranteDAO dao = new RestauranteDAO(endereco,distancia);
		
		restaurante = Mapper.toEntity(dao);
		
		doGet(request, response);
	}

}
