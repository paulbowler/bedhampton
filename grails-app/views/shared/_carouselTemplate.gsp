<div id="pianos" class="panel" style="visibility: hidden;">
	<div class="portlet">
	<h1>Current Stock of Pianos for Sale</h1>
	<p>
		<ul id="mycarousel" class="jcarousel-skin-tango">
			<g:each in="${pianos.channel.item}" var="piano">
				<g:if test="${!piano.description.toString().contains('SOLD') && (piano.title.toString().contains('pright') || piano.title.toString().contains('rand') || piano.title.toString().contains('odern'))}">
					<g:set var="guid" value="${piano.guid.toString().tokenize('/').toArray()[8].tokenize('?').toArray()[0]}" />
					<g:set var="name" value="${piano.link.toString().tokenize('/').toArray()[3]}" />
					<li><a href="/piano/${guid}/${name}/" title="${piano.title.encodeAsHTML()}"><img style="border: 0px;" src="${piano.group.thumbnail.@url}" alt="${piano.title.encodeAsHTML()}" height="102" width="136" /></a></li>
				</g:if>
			</g:each>
		</ul>
	</p>
	</div>
</div>