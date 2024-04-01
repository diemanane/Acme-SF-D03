<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:form>
	<acme:input-textbox code="any.project.form.label.code" path="code"/>	
	<acme:input-textbox code="any.project.form.label.title" path="title"/>	
	<acme:input-textbox code="any.project.form.label.abstractt" path="abstractt"/>	
	<acme:input-money code="any.project.form.label.cost" path="cost"/>	
	<acme:input-url code="any.project.form.label.link" path="link"/>	
	<acme:input-textbox code="any.project.form.label.manager" path="degree"/>	
	<acme:input-money code="manager.project.form.label.money" path="money" readonly="true"/>
</acme:form>