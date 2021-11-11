<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<div class="row">
            <div class="col-10 offset-1 rest-aval">
                <i class="fa fa-star"></i>&nbsp;Avaliações
                <br>
               <div class="row">
                  <div class="col-3">
                    <div class="rest-aval-qtde">
                    	<button type="button" data-toggle="modal" data-target="#rate1">
                    	<%= rate1 %>
                    	</button>
                    </div>
                    <p>5.0 - 4.5 estrelas</p>
                  </div>
                  <div class="col-3">
                    <div class="rest-aval-qtde">
                    	<button type="button" data-toggle="modal" data-target="#rate2">
                    		<%= rate2 %>
                    	</button>
                    </div>
                    <p>4.5 - 4.0 estrelas</p>
                  </div>
                  <div class="col-3">
                    <div class="rest-aval-qtde">
                    	<button type="button" data-toggle="modal" data-target="#rate3">
                    		<%= rate3 %>
                    	</button>
                    </div>
                    <p>4.0 - 3.5 estrelas</p>
                  </div>
                  <div class="col-3">
                    <div class="rest-aval-qtde">
                    	<button type="button" data-toggle="modal" data-target="#rate4">
                    		<%= rate4 %>
                    	</button>
                    </div>
                    <p>3.5 - 3.0 estrelas</p>
                  </div>
               </div>
            </div>
          </div>
          <br><br>
          <div class="row">
            <div class="col-10 offset-1 rest-praz">
                <i class="fa fa-stopwatch"></i>&nbsp;Prazos
                <br>
               <div class="row">
                  <div class="col-3">
                    <div class="rest-praz-qtde green">
                    	<button type="button" data-toggle="modal" data-target="#time1">
                    		<%= time1 %>
                    	</button>
                    </div>
                    <p>15 - 30 min</p>
                  </div>
                  <div class="col-3">
                    <div class="rest-praz-qtde yellow">
                    	<button type="button" data-toggle="modal" data-target="#time2">
                    		<%= time2 %>
                    	</button>
                    </div>
                    <p>30 - 45 min</p>
                  </div>
                  <div class="col-3">
                    <div class="rest-praz-qtde orange">
                    	<button type="button" data-toggle="modal" data-target="#time3">
                    		<%= time3 %>
                    	</button>
                    </div>
                    <p>45 - 60 min</p>
                  </div>
                  <div class="col-3">
                    <div class="rest-praz-qtde red">
                    	<button type="button" data-toggle="modal" data-target="#time4">
                    		<%= time4 %>
                    	</button>
                    </div>
                    <p>> 60 min</p>
                  </div>
               </div>
            </div>
          </div>
          
          <div class="modal fade" id="rate1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		      <div class="modal-dialog modal-dialog-scrollable" role="document">
		        <div class="modal-content">
		          <div class="modal-header">
		            <h5 class="modal-title" id="exampleModalLongTitle">Lista restaurantes 5.0 - 4.5 estrelas</h5>
		          </div>
		          <div class="modal-body">
		                  <c:forEach var = "r1" items="${listaRate1}">
		                  <div class="card" style="margin-bottom: 5px;">
		                  <div class="card-body">
		                      <img src="${r1.getSrcImg()}" class="img"></img>
		                    <div class="details">
		                        <a href="${r1.getUrl()}" target="_blank">${r1.getName()}</a>
		                        <span>Rating: ${r1.getRate()} | Tipo: ${r1.getType()} | Distância: ${r1.getRange()} km | Prazo máx: ${r1.getTime()} min | Frete: ${r1.getShipment()} | ${r1.getDiscount()}
		                        </span>
		                    </div>
		                  </div>
		                </div>
		                  </c:forEach>	
		          </div>
		          <div class="modal-footer">
		            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
		          </div>
		        </div>
		      </div>
		</div>
		
		
		 <div class="modal fade" id="rate2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	      <div class="modal-dialog modal-dialog-scrollable" role="document">
	        <div class="modal-content">
	          <div class="modal-header">
	            <h5 class="modal-title" id="exampleModalLongTitle">Lista restaurantes 4.5 - 4.0 estrelas</h5>
	          </div>
	          <div class="modal-body">
	                <c:forEach var = "r2" items="${listaRate2}">
	                  <div class="card" style="margin-bottom: 5px;">
	                  <div class="card-body">
	                      <img src="${r2.getSrcImg()}" class="img"></img>
	                    <div class="details">
	                        <a href="${r2.getUrl()}" target="_blank">${r2.getName()}</a>
	                        <span>Rating: ${r2.getRate()} | Tipo: ${r2.getType()} | Distância: ${r2.getRange()} km | Prazo máx: ${r2.getTime()} min | Frete: ${r2.getShipment()} | ${r2.getDiscount()}
	                        </span>
	                    </div>
	                  </div>
	                </div>
	                  </c:forEach>	
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
	          </div>
	        </div>
	      </div>
	    </div>
	    
	    <div class="modal fade" id="rate3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	      <div class="modal-dialog modal-dialog-scrollable" role="document">
	        <div class="modal-content">
	          <div class="modal-header">
	            <h5 class="modal-title" id="exampleModalLongTitle">Lista restaurantes 4.0 - 3.5 estrelas</h5>
	          </div>
	          <div class="modal-body">
	                <c:forEach var = "r3" items="${listaRate3}">
	                  <div class="card" style="margin-bottom: 5px;">
	                  <div class="card-body">
	                      <img src="${r3.getSrcImg()}" class="img"></img>
	                    <div class="details">
	                        <a href="${r3.getUrl()}" target="_blank">${r3.getName()}</a>
	                        <span>Rating: ${r3.getRate()} | Tipo: ${r3.getType()} | Distância: ${r3.getRange()} km | Prazo máx: ${r3.getTime()} min | Frete: ${r3.getShipment()} | ${r3.getDiscount()}
	                        </span>
	                    </div>
	                  </div>
	                </div>
	                  </c:forEach>	
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
	          </div>
	        </div>
	      </div>
	    </div>
	    
	    <div class="modal fade" id="rate4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	      <div class="modal-dialog modal-dialog-scrollable" role="document">
	        <div class="modal-content">
	          <div class="modal-header">
	            <h5 class="modal-title" id="exampleModalLongTitle">Lista restaurantes 3.5 - 3.0 estrelas</h5>
	          </div>
	          <div class="modal-body">
	                <c:forEach var = "r4" items="${listaRate4}">
	                  <div class="card" style="margin-bottom: 5px;">
	                  <div class="card-body">
	                      <img src="${r4.getSrcImg()}" class="img"></img>
	                    <div class="details">
	                        <a href="${r4.getUrl()}" target="_blank">${r4.getName()}</a>
	                        <span>Rating: ${r4.getRate()} | Tipo: ${r4.getType()} | Distância: ${r4.getRange()} km | Prazo máx: ${r4.getTime()} min | Frete: ${r4.getShipment()} | ${r4.getDiscount()}
	                        </span>
	                    </div>
	                  </div>
	                </div>
	                  </c:forEach>	
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
	          </div>
	        </div>
	      </div>
	    </div>
	    
	    <div class="modal fade" id="time1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Lista restaurantes 15 - 30 min</h5>
          </div>
          <div class="modal-body">
                  <c:forEach var = "t1" items="${listaTime1}">
                  <div class="card" style="margin-bottom: 5px;">
                  <div class="card-body">
                      <img src="${t1.getSrcImg()}" class="img"></img>
                    <div class="details">
                        <a href="${t1.getUrl()}" target="_blank">${t1.getName()}</a>
                        <span>Rating: ${t1.getRate()} | Tipo: ${t1.getType()} | Distância: ${t1.getRange()} km | Prazo máx: ${t1.getTime()} min | Frete: ${t1.getShipment()} | ${t1.getDiscount()}
                        </span>
                    </div>
                  </div>
                </div>
                  </c:forEach>	
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
          </div>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="time2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Lista restaurantes 30 - 45 min</h5>
          </div>
          <div class="modal-body">
                <c:forEach var = "t2" items="${listaTime2}">
                  <div class="card" style="margin-bottom: 5px;">
                  <div class="card-body">
                      <img src="${t2.getSrcImg()}" class="img"></img>
                    <div class="details">
                        <a href="${t2.getUrl()}" target="_blank">${t2.getName()}</a>
                        <span>Rating: ${t2.getRate()} | Tipo: ${t2.getType()} | Distância: ${t2.getRange()} km | Prazo máx: ${t2.getTime()} min | Frete: ${t2.getShipment()} | ${t2.getDiscount()}
                        </span>
                    </div>
                  </div>
                </div>
                  </c:forEach>	
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
          </div>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="time3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Lista restaurantes 45 - 60 min</h5>
          </div>
          <div class="modal-body">
                <c:forEach var = "t3" items="${listaTime3}">
                  <div class="card" style="margin-bottom: 5px;">
                  <div class="card-body">
                      <img src="${t3.getSrcImg()}" class="img"></img>
                    <div class="details">
                        <a href="${t3.getUrl()}" target="_blank">${t3.getName()}</a>
                        <span>Rating: ${t3.getRate()} | Tipo: ${t3.getType()} | Distância: ${t3.getRange()} km | Prazo máx: ${t3.getTime()} min | Frete: ${t3.getShipment()} | ${t3.getDiscount()}
                        </span>
                    </div>
                  </div>
                </div>
                  </c:forEach>	
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
          </div>
        </div>
      </div>
    </div>
    
    <div class="modal fade" id="time4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">Lista restaurantes > 60 min</h5>
          </div>
          <div class="modal-body">
                <c:forEach var = "t4" items="${listaTime4}">
                  <div class="card" style="margin-bottom: 5px;">
                  <div class="card-body">
                      <img src="${t4.getSrcImg()}" class="img"></img>
                    <div class="details">
                        <a href="${t4.getUrl()}" target="_blank">${t4.getName()}</a>
                        <span>Rating: ${t4.getRate()} | Tipo: ${t4.getType()} | Distância: ${t4.getRange()} km | Prazo máx: ${t4.getTime()} min | Frete: ${t4.getShipment()} | ${t4.getDiscount()}
                        </span>
                    </div>
                  </div>
                </div>
                  </c:forEach>	
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
          </div>
        </div>
      </div>
    </div>
