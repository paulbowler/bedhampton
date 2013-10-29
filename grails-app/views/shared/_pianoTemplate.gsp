<g:set var="guid" value="${piano.guid.toString().tokenize('/').toArray()[8].tokenize('?').toArray()[0]}" />
<g:set var="name" value="${piano.link.toString().tokenize('/').toArray()[3]}" />
<g:set var="type" value="portlet" />
<g:if test="${piano.group.description.toString().contains('SOLD')}"><g:set var="type" value="sold"/></g:if>
<g:if test="${piano.group.description.toString().contains('RESERVED')}"><g:set var="type" value="reserved"/></g:if>
<div class="${type}">
	<h2><a href="/piano/${guid}/${name}/" title="${piano.title.encodeAsHTML()}">${piano.title.encodeAsHTML()}</a></h2>
	<p><a href="/piano/${guid}/${name}/" title="${piano.title.encodeAsHTML()}"><img class="si" src="${piano.group.thumbnail.@url}" alt="${piano.title.encodeAsHTML()}"></a></p>
	<p class="cont">${piano.group.description.encodeAsHTML()}</p>
	<p class="cont"><a href="/piano/${guid}/${name}/" title="${piano.title.encodeAsHTML()}"><img class="button" src="/static/images/more.png" alt="More pictures of ${piano.title.encodeAsHTML()}"></a></p>
</div>