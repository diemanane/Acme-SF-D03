
<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" uri="http://acme-framework.org/"%>

<acme:form>
	<acme:input-textbox code="authenticated.notice.form.label.title" path="title" />
	<acme:input-textbox code="authenticated.notice.form.label.message" path="message" />
	<acme:input-textbox code="authenticated.notice.form.label.author" path="author" />
	<acme:input-email code="authenticated.notice.form.label.email" path="email" />
	<acme:input-url code="authenticated.notice.form.label.link" path="link" />
	<acme:input-checkbox code="authenticated.notice.form.label.confirmation" path="confirmation" />
	
	<jstl:if test="${_command == 'create'}">
		<acme:submit code="authenticated.notice.form.button.create" action="/authenticated/notice/create"/>
	</jstl:if>	
</acme:form>