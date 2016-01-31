
<%@ page import="test.Restaurante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'restaurante.label', default: 'Restaurante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-restaurante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-restaurante" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list restaurante">
			
				<g:if test="${restauranteInstance?.restaurante}">
				<li class="fieldcontain">
					<span id="restaurante-label" class="property-label"><g:message code="restaurante.restaurante.label" default="Restaurante" /></span>
					
						<span class="property-value" aria-labelledby="restaurante-label"><g:fieldValue bean="${restauranteInstance}" field="restaurante"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restauranteInstance?.tipo}">
				<li class="fieldcontain">
					<span id="tipo-label" class="property-label"><g:message code="restaurante.tipo.label" default="Tipo" /></span>
					
						<span class="property-value" aria-labelledby="tipo-label"><g:fieldValue bean="${restauranteInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restauranteInstance?.calle}">
				<li class="fieldcontain">
					<span id="calle-label" class="property-label"><g:message code="restaurante.calle.label" default="Calle" /></span>
					
						<span class="property-value" aria-labelledby="calle-label"><g:fieldValue bean="${restauranteInstance}" field="calle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restauranteInstance?.nro}">
				<li class="fieldcontain">
					<span id="nro-label" class="property-label"><g:message code="restaurante.nro.label" default="Nro" /></span>
					
						<span class="property-value" aria-labelledby="nro-label"><g:fieldValue bean="${restauranteInstance}" field="nro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restauranteInstance?.localidad}">
				<li class="fieldcontain">
					<span id="localidad-label" class="property-label"><g:message code="restaurante.localidad.label" default="Localidad" /></span>
					
						<span class="property-value" aria-labelledby="localidad-label"><g:fieldValue bean="${restauranteInstance}" field="localidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restauranteInstance?.partido}">
				<li class="fieldcontain">
					<span id="partido-label" class="property-label"><g:message code="restaurante.partido.label" default="Partido" /></span>
					
						<span class="property-value" aria-labelledby="partido-label"><g:fieldValue bean="${restauranteInstance}" field="partido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restauranteInstance?.provincia}">
				<li class="fieldcontain">
					<span id="provincia-label" class="property-label"><g:message code="restaurante.provincia.label" default="Provincia" /></span>
					
						<span class="property-value" aria-labelledby="provincia-label"><g:fieldValue bean="${restauranteInstance}" field="provincia"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restauranteInstance?.inicioAM}">
				<li class="fieldcontain">
					<span id="inicioAM-label" class="property-label"><g:message code="restaurante.inicioAM.label" default="Inicio AM" /></span>
					
						<span class="property-value" aria-labelledby="inicioAM-label"><g:fieldValue bean="${restauranteInstance}" field="inicioAM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restauranteInstance?.cierreAM}">
				<li class="fieldcontain">
					<span id="cierreAM-label" class="property-label"><g:message code="restaurante.cierreAM.label" default="Cierre AM" /></span>
					
						<span class="property-value" aria-labelledby="cierreAM-label"><g:fieldValue bean="${restauranteInstance}" field="cierreAM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restauranteInstance?.inicioPM}">
				<li class="fieldcontain">
					<span id="inicioPM-label" class="property-label"><g:message code="restaurante.inicioPM.label" default="Inicio PM" /></span>
					
						<span class="property-value" aria-labelledby="inicioPM-label"><g:fieldValue bean="${restauranteInstance}" field="inicioPM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restauranteInstance?.cierrePM}">
				<li class="fieldcontain">
					<span id="cierrePM-label" class="property-label"><g:message code="restaurante.cierrePM.label" default="Cierre PM" /></span>
					
						<span class="property-value" aria-labelledby="cierrePM-label"><g:fieldValue bean="${restauranteInstance}" field="cierrePM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restauranteInstance?.disponibilidad}">
				<li class="fieldcontain">
					<span id="disponibilidad-label" class="property-label"><g:message code="restaurante.disponibilidad.label" default="Disponibilidad" /></span>
					
						<span class="property-value" aria-labelledby="disponibilidad-label"><g:fieldValue bean="${restauranteInstance}" field="disponibilidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${restauranteInstance?.reservas}">
				<li class="fieldcontain">
					<span id="reservas-label" class="property-label"><g:message code="restaurante.reservas.label" default="Reservas" /></span>
					
						<g:each in="${restauranteInstance.reservas}" var="r">
						<span class="property-value" aria-labelledby="reservas-label"><g:link controller="reserva" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:restauranteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${restauranteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
