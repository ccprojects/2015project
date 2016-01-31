<%@ page import="test.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${usuarioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="usuario.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${usuarioInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${usuarioInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="usuario.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="telefono" type="number" value="${usuarioInstance.telefono}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'calle', 'error')} required">
	<label for="calle">
		<g:message code="usuario.calle.label" default="Calle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calle" required="" value="${usuarioInstance?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nro', 'error')} required">
	<label for="nro">
		<g:message code="usuario.nro.label" default="Nro" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nro" type="number" value="${usuarioInstance.nro}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'localidad', 'error')} required">
	<label for="localidad">
		<g:message code="usuario.localidad.label" default="Localidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="localidad" required="" value="${usuarioInstance?.localidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'partido', 'error')} required">
	<label for="partido">
		<g:message code="usuario.partido.label" default="Partido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="partido" required="" value="${usuarioInstance?.partido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'provincia', 'error')} required">
	<label for="provincia">
		<g:message code="usuario.provincia.label" default="Provincia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="provincia" required="" value="${usuarioInstance?.provincia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'reservas', 'error')} ">
	<label for="reservas">
		<g:message code="usuario.reservas.label" default="Reservas" />
		
	</label>
	<g:select name="reservas" from="${test.Reserva.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.reservas*.id}" class="many-to-many"/>

</div>

