<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:admin_tamplate title="Projeto" breadcrumb="Cadastrar Usuarios">
	<jsp:attribute name="content">

<table class="table table-sm">
			  <thead>
			    <tr>
			     <th scope="col">ID</th>
			      <th scope="col">Nome</th>
			      <th scope="col">E-mail</th>
			      <th scope="col">Idade</th>
			      <th scope="col">CPF</th>
			      
			    </tr>
			  </thead>
			  
			
			</table>

	<div id="minhadiv">
		 
		 <button onclick="a()" class="btn btn-info btn-sm" type="submit">Visualizar</button>
	</div>
		
		
	</jsp:attribute>

</mt:admin_tamplate>
<script>
		function a() {
			//pegando o dado do localStorage
			var vetor = []
			var i = 0
			for (i = 0; i < localStorage.length; i++) {
				var a = localStorage.getItem("cadastrado"+i)
				vetor.push(a)
				
			}
			document.body.querySelector("#minhadiv").innerHTML = vetor;
				
			
			
		}
		
		
	</script>