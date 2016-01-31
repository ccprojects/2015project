
<%@ page import="test.Restaurante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'restaurante.label', default: 'Restaurante')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-restaurante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-restaurante" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<table>
			<g:form  controller= "Reserva", action= "create" >
			<thead>
					<tr>
					
						<g:sortableColumn property="restaurante" title="${message(code: 'restaurante.restaurante.label', default: 'Restaurante')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'restaurante.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="calle" title="${message(code: 'restaurante.calle.label', default: 'Calle')}" />
					
						<g:sortableColumn property="nro" title="${message(code: 'restaurante.nro.label', default: 'Nro')}" />
					
						<g:sortableColumn property="localidad" title="${message(code: 'restaurante.localidad.label', default: 'Localidad')}" />
					
						<g:sortableColumn property="partido" title="${message(code: 'restaurante.partido.label', default: 'Partido')}" />
						
						<g:sortableColumn property="action" title="${message(code: '${restaurante}', default: 'Accion')}" />
					
				
					
					</tr>
				</thead>
				<tbody>
				
				<g:each in="${restauranteInstanceList}" status="i" var="restauranteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${restauranteInstance.id}">${fieldValue(bean: restauranteInstance, field: "restaurante")}</g:link></td>
					
						<td>${fieldValue(bean: restauranteInstance, field: "tipo")}</td>
					
						<td>${fieldValue(bean: restauranteInstance, field: "calle")}</td>
					
						<td>${fieldValue(bean: restauranteInstance, field: "nro")}</td>
					
						<td>${fieldValue(bean: restauranteInstance, field: "localidad")}</td>
					
						<td>${fieldValue(bean: restauranteInstance, field: "partido")}</td>
						
						<td>
						
					
						
																							
						<g:actionSubmit value= "create"/>
    					
    					
    					 </td>
	
					</tr>
				</g:each>
				
				</g:form>
				
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${restauranteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
