
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.aplicativo.de.comida.services.Service"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% 
	Service service = new Service();
	String end = request.getParameter("endereco"); 
	if(end!=null){
		if(end.equals("Av. Pres. Castelo Branco, 2836")){
			request.setAttribute("ende",1);
		}else if(end.equals("R. Barão de Aratanha, 10")){
			request.setAttribute("ende",2);
		}else{
			request.setAttribute("ende",3);
		}
		request.setAttribute("end",end);
	}
	
	String tipo = request.getParameter("tipo");
	if(tipo!=null){
		if(tipo.equals("Todos")){
			request.setAttribute("tip",1);
		}else if(tipo.equals("Lanches")){
			request.setAttribute("tip",2);
		}else if(tipo.equals("Pizza")){
			request.setAttribute("tip",3);
		}else{
			request.setAttribute("tip",4);
		}
	}
	
	
	String range = request.getParameter("inlineRadioOptions");
	if(range!=null){
		if(range.equals("0-1 km")){
			request.setAttribute("ran",1);
		}else if(range.equals("1-2 km")){
			request.setAttribute("ran",2);
		}else if(range.equals("2-3 km")){
			request.setAttribute("ran",3);
		}else{
			request.setAttribute("ran",4);
		}
	}
	Double dist = null;
	
	Integer total = 0;
	
	Integer rate1 = 0;
	Integer rate2 = 0;
	Integer rate3 = 0;
	Integer rate4 = 0;
	
	Integer time1 = 0;
	Integer time2 = 0;
	Integer time3 = 0;
	Integer time4 = 0;
	
	if(range != null && !range.equals("distância (km)")){
		dist = Double.parseDouble(range.split("-")[1].replace(" km", ""));
		
		
		if(tipo.equals("Todos")){
			total = service.getQtdByAdrRange(end, dist);
			
			rate1 = service.getQtdByAdrRangeRate(end, dist, "5.0");
			request.setAttribute("listaRate1",service.getListByAdrRangeRate(end, dist, "5.0"));
			rate2 = service.getQtdByAdrRangeRate(end, dist, "4.5");
			request.setAttribute("listaRate2",service.getListByAdrRangeRate(end, dist, "4.5"));
			rate3 = service.getQtdByAdrRangeRate(end, dist, "4.0");
			request.setAttribute("listaRate3",service.getListByAdrRangeRate(end, dist, "4.0"));
			rate4 = service.getQtdByAdrRangeRate(end, dist, "3.5");
			request.setAttribute("listaRate4",service.getListByAdrRangeRate(end, dist, "4.5"));
			
			time1 = service.getQtdByAdrRangeTime(end, dist, 30);
			request.setAttribute("listaTime1",service.getListByAdrRangeTime(end, dist, 30));
			time2 = service.getQtdByAdrRangeTime(end, dist, 45);
			request.setAttribute("listaTime2",service.getListByAdrRangeTime(end, dist, 45));
			time3 = service.getQtdByAdrRangeTime(end, dist, 60);
			request.setAttribute("listaTime3",service.getListByAdrRangeTime(end, dist, 60));
			time4 = service.getQtdByAdrRangeTime(end, dist, 61);
			request.setAttribute("listaTime4",service.getListByAdrRangeTime(end, dist, 61));
		}else{
			total = service.getQtdByAdrTypeRange(end, tipo,dist);
			
			rate1 = service.getQtdByAdrTypeRangeRate(end, tipo, dist, "5.0");
			request.setAttribute("listaRate1",service.getListByAdrTypeRangeRate(end, tipo, dist, "5.0"));
			rate2 = service.getQtdByAdrTypeRangeRate(end, tipo, dist, "4.5");
			request.setAttribute("listaRate2",service.getListByAdrTypeRangeRate(end, tipo, dist, "4.5"));
			rate3 = service.getQtdByAdrTypeRangeRate(end, tipo, dist, "4.0");
			request.setAttribute("listaRate3",service.getListByAdrTypeRangeRate(end, tipo, dist, "4.0"));
			rate4 = service.getQtdByAdrTypeRangeRate(end, tipo, dist, "3.5");
			request.setAttribute("listaRate4",service.getListByAdrTypeRangeRate(end, tipo, dist, "4.5"));
			
			time1 = service.getQtdByAdrTypeRangeTime(end, tipo, dist, 30);
			request.setAttribute("listaTime1",service.getListByAdrTypeRangeTime(end, tipo, dist, 30));
			time2 = service.getQtdByAdrTypeRangeTime(end, tipo, dist, 45);
			request.setAttribute("listaTime2",service.getListByAdrTypeRangeTime(end, tipo, dist, 45));
			time3 = service.getQtdByAdrTypeRangeTime(end, tipo, dist, 60);
			request.setAttribute("listaTime3",service.getListByAdrTypeRangeTime(end, tipo, dist, 60));
			time4 = service.getQtdByAdrTypeRangeTime(end, tipo, dist, 61);
			request.setAttribute("listaTime4",service.getListByAdrTypeRangeTime(end, tipo, dist, 61));
			
		}
		
	}
		
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Food Tracker</title>
<%@ include file="Header.jsp" %>
</head>
<body>
<div class="header">
      <img src="resources/img/racker 2.png" alt="Tracker">
      <img src="resources/img/logoifood 2.png" alt="Ifood">
  </div>
  <div id="map"></div>
  <form action="Main.jsp" method="get">
  	<div class="painel">
    <div class="godown">
      <div class="bar"></div>
    </div> 
    <div class="container cont">
          <div class="header-desk">
            <img src="resources/img/racker 1.png" alt="Tracker">
            <img src="resources/img/logoifood 1.png" alt="Ifood">
          </div>
          <div class="row search">
              <div class="col-10 offset-1">
                <div class="input-group mb-3">
                  <div class="input-group-prepend addsamecolor">
                    <span class="input-group-text addsamecolor" id="basic-addon1"><i class="fa fa-search"></i></span>
                  </div>
                  <select name="endereco" class="form-control buscaendereco" aria-label="Default select example">
	  				<option selected> Buscar por endereço </option>
	  				<option ${ende == 1 ? 'selected':''} value="Av. Pres. Castelo Branco, 2836">Av. Pres. Castelo Branco, 2836</option>
	  				<option ${ende == 2 ? 'selected':''} value="R. Barão de Aratanha, 10">R. Barão de Aratanha, 10</option>
	  				<option ${ende == 3 ? 'selected':''} value="Rua dos Guajajaras, s/n">Rua dos Guajajaras, s/n</option>
				</select>
                </div>              
              </div>
          </div>
          
          <div class="row near-rest">
              <div class="col-3 offset-1">
                  <div class="rest-qtde">
                      <td><%= total %></td>
                  </div>
              </div>
              <div class="col-3 text-near-rest">
                  <p>Restaurantes<br> por<br> perto</p>
              </div>
              <div class="col-4 dist-rest">
              		<select name="inlineRadioOptions" class="form-control buscadistancia" aria-label="Default select example">
		  				<option selected> distância (km) </option>
		  				<option ${ran == 1 ? 'selected':''} value="0-1 km">0-1 km</option>
		  				<option ${ran == 2 ? 'selected':''} value="1-2 km">1-2 km</option>
		  				<option ${ran == 3 ? 'selected':''} value="2-3 km">2-3 km</option>
		  				<option ${ran == 4 ? 'selected':''} value="3-4 km">3-4 km</option>
					</select>
              </div>
          </div>
          <br><br>
          <div class="row rest-types">
              <div class="col-3 no-space">
              		<button class="${tip == 1 ? 'clicked':''}" type="submit" value="Todos" name="tipo">
              			<img src="resources/img/market.png" alt="Mercados"><br>
                  		Todos
              		</button>
                  
              </div>
              <div class="col-3 no-space">
              		<button class="${tip == 2 ? 'clicked':''}" type="submit" value="Lanches" name="tipo" >
              			<img src="resources/img/lanche.png" alt="Mercados"><br>
                  		Lanches
              		</button>
                  
              </div>
              <div class="col-3 no-space">
              		<button class="${tip == 3 ? 'clicked':''}" type="submit" value="Pizza" name="tipo" >
              			<img src="resources/img/Pizza.png" alt="Mercados"><br>
                  		Pizza
              		</button>
              </div>
              <div class="col-3 no-space">
              		<button class="${tip == 4 ? 'clicked':''}" type="submit" value="Japonesa" name="tipo" >
              			<img src="resources/img/Japonesa.png" alt="Mercados"><br>
                  		Japonesa
              		</button>
                  
              </div>
          </div>
          <br><br>
          <%@ include file="Quantidades.jsp" %>
        <br><br><br><br>
    </div>           
  </div>
  </form>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8arU9AMBAMA3sZjsr4TcfJtxhzM4eUBM&callback=initMap&v=weekly&language=pt-br&region=BR"
      async ></script>
<script>

	function initMap() {
		var coord1 = { lat: -12.9813055, lng: -38.5087628 };
		var coord2 = { lat: -3.7330196, lng: -38.5287288 };
		var coord3 = { lat: -19.923992, lng: -43.9476102 };
		
		var coordDefault = { lat: -23.5503099, lng: -46.6363896 };
		
		
		
		switch("${ende}"){
			case "1":{
				loadMap(coord1,"${end}");
				break;
			}
			case "2":{
				loadMap(coord2,"${end}");
				break;
			}
			case "3":{
				loadMap(coord3,"${end}");
				break;
			}
			default:
				loadMap(coordDefault,null);
		}
		
		
	}

	function loadMap(coord, end ,zoom = 16){
		
	
	    var styleArray = [
	        {
	          featureType: "poi",
	          stylers: [
	            { visibility: "off" }
	          ]
	        }
	    ];
	
	    map = new google.maps.Map(document.getElementById("map"), {
	        zoom: zoom,
	        center: coord,       
	        disableDefaultUI: true,
	        styles:styleArray
	    });
	    
	    new google.maps.Marker({
		    position: coord,
		    icon: './resources/img/centro-de-gravidade.png',
		    map,
		    title: end
		  });
	    
	    
	    let location;
	    let marker;
	    <c:forEach items="${listaRate1}" var="r1" varStatus="loop">
		    location = { lat: parseFloat("${r1.getLatitude()}"), lng: parseFloat("${r1.getLongitude()}") }
		    marker = new google.maps.Marker({
		        position: location,
		        map,
		        title: "${r1.getName()}",
		    });
		    content = `<div class="card-body">
		                    <img src="${r1.getSrcImg()}" class="img"></img>
		                    <div class="details">
		                        <a href="${r1.getUrl()}" target="_blank">${r1.getName()}</a>
		                        <span>Rating: ${r1.getRate()} | Tipo: ${r1.getType()} | Distância: ${r1.getRange()} km | Prazo máx: ${r1.getTime()} min | Frete: ${r1.getShipment()} | ${r1.getDiscount()}
		                        </span>
		                    </div>
		                </div>`
		    showDetails(marker, map, content);
		                
		   
    	</c:forEach>
    	
    	<c:forEach items="${listaRate2}" var="r2" varStatus="loop">
		    location = { lat: parseFloat("${r2.getLatitude()}"), lng: parseFloat("${r2.getLongitude()}") }
	
		    marker = new google.maps.Marker({
		        position: location,
		        map,
		        title: "${r2.getName()}",
		    });
		    content = `<div class="card-body">
		                    <img src="${r2.getSrcImg()}" class="img"></img>
		                    <div class="details">
		                        <a href="${r2.getUrl()}" target="_blank">${r2.getName()}</a>
		                        <span>Rating: ${r2.getRate()} | Tipo: ${r2.getType()} | Distância: ${r2.getRange()} km | Prazo máx: ${r2.getTime()} min | Frete: ${r2.getShipment()} | ${r2.getDiscount()}
		                        </span>
		                    </div>
		                </div>`
		    showDetails(marker, map, content);
		                
		</c:forEach>
		
		
		<c:forEach items="${listaRate3}" var="r3" varStatus="loop">
		    location = { lat: parseFloat("${r3.getLatitude()}"), lng: parseFloat("${r3.getLongitude()}") }
	
		    marker = new google.maps.Marker({
		        position: location,
		        map,
		        title: "${r3.getName()}",
		    });
		    content = `<div class="card-body">
		                    <img src="${r3.getSrcImg()}" class="img"></img>
		                    <div class="details">
		                        <a href="${r3.getUrl()}" target="_blank">${r3.getName()}</a>
		                        <span>Rating: ${r3.getRate()} | Tipo: ${r3.getType()} | Distância: ${r3.getRange()} km | Prazo máx: ${r3.getTime()} min | Frete: ${r3.getShipment()} | ${r3.getDiscount()}
		                        </span>
		                    </div>
		                </div>`
		    showDetails(marker, map, content);
		                
		</c:forEach>
		
		<c:forEach items="${listaRate4}" var="r4" varStatus="loop">
		    location = { lat: parseFloat("${r4.getLatitude()}"), lng: parseFloat("${r4.getLongitude()}") }
	
		    marker = new google.maps.Marker({
		        position: location,
		        map,
		        title: "${r4.getName()}",
		    });
		    content = `<div class="card-body">
		                    <img src="${r4.getSrcImg()}" class="img"></img>
		                    <div class="details">
		                        <a href="${r4.getUrl()}" target="_blank">${r4.getName()}</a>
		                        <span>Rating: ${r4.getRate()} | Tipo: ${r4.getType()} | Distância: ${r4.getRange()} km | Prazo máx: ${r4.getTime()} min | Frete: ${r4.getShipment()} | ${r4.getDiscount()}
		                        </span>
		                    </div>
		                </div>`
		    showDetails(marker, map, content);
		                
		</c:forEach>
	    
    	
	}
	
	function showDetails(mark, map, content) {
	    (function (zmark, zmap, zcontent) {
	        google.maps.event.addListener(zmark, 'click', function () {  
	            new google.maps.InfoWindow({
	                content: zcontent,
	            }).open({
	                anchor: zmark,
	                zmap,
	                shouldFocus: false,
	            });
	        });
	        
	    })(mark, map, content);
	}
</script>
<%@ include file="Footer.jsp" %>
</body>
</html>