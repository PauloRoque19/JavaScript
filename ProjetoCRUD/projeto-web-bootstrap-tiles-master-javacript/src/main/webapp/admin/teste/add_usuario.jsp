<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:admin_tamplate title="Projeto" breadcrumb="Cadastrar Usuarios">
	<jsp:attribute name="content">
	<section class="content">

	<section class="content-header">
			<form class="text-center border border-light p-5">
			
			    <p class="h4 mb-4">Novo Usuário</p>
				
				<div class="form-group">
				    <!-- Name -->
				    <input name="nome" type="text" id="nome"
							class="form-control mb-4" placeholder="Digite seu Nome">
			    </div>
			
				<div class="form-group">
				    <!-- Email -->
				    <input name="email" type="text" id="email"
							class="form-control mb-4" placeholder="Digite seu E-mail">
			    </div>
			    
			    <div class="form-group">
				     <!-- idade -->
				    <input name="idade" type="text" id="idade"
							class="form-control mb-4" placeholder="Data de nascimento">
			    </div>
			    <div class="form-group">
				     <!-- cpf -->
				    <input name="cpf" type="text" id="cpf"
							class="form-control mb-4" placeholder="Digite seu Cpf">
			    </div>
			
			    
			    <!-- Enviar -->
			    <button onclick="validar()" class="btn btn-info btn-sm"
						type="submit">Salvar</button>
			    
			    <!-- Listar -->
			    
			    <!--<a href="${pageContext.request.contextPath}/admin/empresas/empresas.jsp"
						class="btn btn-info btn-sm" type="submit">Empresas</a>-->
			
			</form>
	     </section>
     
     
     </section>

	
</jsp:attribute>

</mt:admin_tamplate>
<script>


var contadora = 0;


	function validar() {
		
		
		//event.preventDefault();
		var nome = document.getElementById("nome").value;
		var email = document.getElementById("email").value;
		var idade = document.getElementById("idade").value;
		var cpf = document.getElementById("cpf").value;
		

		if (nome == "" && email == "" && idade == "") {
			alert("Campos vazios")
			//event.preventDefault();
			window.location.href = "add_usuario.jsp";
		}

		else{
			
			var usuario = {
						
					 nome : nome,
				     email : email,
				     idade : idade,
				     cpf   : cpf }
			
			
			alert("Usuário Cadastro com Sucesso.")
			

			var json = JSON.stringify(usuario);

			localStorage.setItem("cadastrado"+contadora, json);

			contadora = contadora + 1;
			
			
		}

		event.preventDefault();
	}
</script>