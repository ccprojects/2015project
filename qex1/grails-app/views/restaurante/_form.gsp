<%@ page import="test.Restaurante" %>



<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'restaurante', 'error')} required">
	<label for="restaurante">
		<g:message code="restaurante.restaurante.label" default="Restaurante" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="restaurante" required="" value="${restauranteInstance?.restaurante}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="restaurante.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="tipo" from="${restauranteInstance.constraints.tipo.inList}" required="" value="${restauranteInstance?.tipo}" valueMessagePrefix="restaurante.tipo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'calle', 'error')} required">
	<label for="calle">
		<g:message code="restaurante.calle.label" default="Calle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calle" required="" value="${restauranteInstance?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'nro', 'error')} required">
	<label for="nro">
		<g:message code="restaurante.nro.label" default="Nro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nro" required="" value="${restauranteInstance?.nro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'localidad', 'error')} required">
	<label for="localidad">
		<g:message code="restaurante.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="localidad" required="" value="${restauranteInstance?.localidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'partido', 'error')} required">
	<label for="partido">
		<g:message code="restaurante.partido.label" default="Partido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="partido" required="" value="${restauranteInstance?.partido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'provincia', 'error')} required">
	<label for="provincia">
		<g:message code="restaurante.provincia.label" default="Provincia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="provincia" required="" value="${restauranteInstance?.provincia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'inicioAM', 'error')} required">
	<label for="inicioAM">
		<g:message code="restaurante.inicioAM.label" default="Inicio AM" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="inicioAM" from="${restauranteInstance.constraints.inicioAM.inList}" required="" value="${fieldValue(bean: restauranteInstance, field: 'inicioAM')}" valueMessagePrefix="restaurante.inicioAM"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'cierreAM', 'error')} required">
	<label for="cierreAM">
		<g:message code="restaurante.cierreAM.label" default="Cierre AM" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="cierreAM" from="${restauranteInstance.constraints.cierreAM.inList}" required="" value="${fieldValue(bean: restauranteInstance, field: 'cierreAM')}" valueMessagePrefix="restaurante.cierreAM"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'inicioPM', 'error')} required">
	<label for="inicioPM">
		<g:message code="restaurante.inicioPM.label" default="Inicio PM" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="inicioPM" from="${restauranteInstance.constraints.inicioPM.inList}" required="" value="${fieldValue(bean: restauranteInstance, field: 'inicioPM')}" valueMessagePrefix="restaurante.inicioPM"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'cierrePM', 'error')} required">
	<label for="cierrePM">
		<g:message code="restaurante.cierrePM.label" default="Cierre PM" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="cierrePM" from="${restauranteInstance.constraints.cierrePM.inList}" required="" value="${fieldValue(bean: restauranteInstance, field: 'cierrePM')}" valueMessagePrefix="restaurante.cierrePM"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'disponibilidad', 'error')} required">
	<label for="disponibilidad">
		<g:message code="restaurante.disponibilidad.label" default="Disponibilidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="disponibilidad" type="number" min="1" value="${restauranteInstance.disponibilidad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'reservas', 'error')} ">
	<label for="reservas">
		<g:message code="restaurante.reservas.label" default="Reservas" />
		
	</label>
	<g:select name="reservas" from="${test.Reserva.list()}" multiple="multiple" optionKey="id" size="5" value="${restauranteInstance?.reservas*.id}" class="many-to-many"/>

</div>

