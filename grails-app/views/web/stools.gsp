<html>
	<head>
		<meta name="layout" content="main" />
		<meta name="keywords" content="Piano, Stools, Stool, Duet, Adjustable">
		<meta name="description" content="Piano Stools for Sale">
		<title>Piano Stools - Bedhampton Piano Shop</title>
	</head>
	<body>
		<div id="wrapper">
			<div id="header"></div>
			<g:render template="/shared/menuTemplate" />
			<div id="main">
				<div id="content">
					<div class="panel">
						<div class="portlet">
							<h1>Piano Stools</h1>
							<p>We offer a wide range of piano stools to suit all needs. Our stools are made to order, with an excellent choice of wood colours and fabrics.
							Some stools can also be finished in a modern 'polygloss' polish. Contact us for more information, or visit the shop for more pictures and samples.</p>
						</div>
						<g:each in="${stools.channel.item}">
							<div class="portlet">
								<h2>${it.title.toString().replaceAll('_', ' ').replaceAll('.jpg', '').replaceAll('.JPG', '')}</h2>
								<p><img class="stool" src="${it.group.thumbnail.@url}" alt="${it.title}"/>${it.group.description}</p>
							</div>
						</g:each>
					</div>
				</div>
				<div id="right">
					<g:each in="${stooldata.channel.item}">
						<div class="panel">
							<div class="portlet">
								<h2>${it.title.encodeAsHTML()}</h2>
								<p>${it.description}</p>
							</div>
						</div>
					</g:each>	
					<div class="panel">
						<div class="portlet">
						<h2>We have many more!</h2>
						<p>This is only a sample of what is available. All stools are available in approximately 20 wood types and 20+ covers.</p>
						</div>
					</div>

				</div>
			<g:render template="/shared/footerTemplate" />
		</div>
	</body>
</html>