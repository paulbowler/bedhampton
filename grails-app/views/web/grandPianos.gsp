<html>
	<head>
		<meta name="layout" content="main" />
		<meta name="keywords" content="Grand, Piano, Pianos, Sale">
		<meta name="description" content="Grand Pianos for Sale">
		<title>Grand Pianos for Sale - Bedhampton Piano Shop</title>
	</head>
	<body>
		<div id="wrapper">
			<div id="header"></div>
			<g:render template="/shared/menuTemplate" />
			<div id="main">
				<div id="content">
					<div class="panel">
						<div class="portlet">
							<h1>Grand Pianos for Sale</h1>
							<p>Here are the grand pianos we currently have for sale. Our stock is constantly changing
							so make sure you come back regularly to view our latest models.</p>
						</div>
						<g:each in="${pianos.channel.item}" var="piano">
							<g:if test="${piano.title.toString().contains('rand')}">
								<g:render template="/shared/pianoTemplate" model="[piano:piano]"/>
							</g:if>
						</g:each>
					</div>
				</div>
				<div id="right">
					<div class="panel">
						<div class="portlet">
							<h3>Pianos for sale</h3>
							<p><a href="/pianos_for_sale/modern_pianos/">Modern Pianos</a></p>
							<p><a href="/pianos_for_sale/restored_pianos/">Restored Pianos</a></p>
							<p><a href="/pianos_for_sale/grand_pianos/">Grand Pianos</a></p>
						</div>
					</div>
				</div>
			<g:render template="/shared/footerTemplate" />
		</div>
	</body>
</html>
