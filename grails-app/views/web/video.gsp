<html>
	<head>	
		<meta name="layout" content="main" />
		<meta name="keywords" content="Grand, Piano, Pianos, Sale">
		<meta name="description" content="Grand Pianos for Sale">
		<title>Piano Restoration - Bedhampton Piano Shop</title>
	</head>
	<body>
		<div id="wrapper">
			<div id="header"></div>
			<g:render template="/shared/menuTemplate" />
			<div id="main">
				<div id="content">
					<div class="panel">
						<div class="portlet">
							<h1>Piano Restoration Videos</h1>
							<p>Here are some videos showing piano restoration in action at our workshop.</p>
						</div>
						<g:each in="${videos.entry}">
								<div class="portlet">
									<h2>${it.title.encodeAsHTML()}</h2>
									<p>
										<span class="video">
											<object style="width: 265px; height: 225px; border: 0px;">
												<param name="movie" value="${it.group.content[0].@url}"/>
												<param name="allowFullScreen" value="true"/>
												<param name="allowScriptAccess" value="never"/>
												<embed src="${it.group.content[0].@url}" type="application/x-shockwave-flash" allowfullscreen="true" allowScriptAccess="never" width="265" height="225"/>
											</object>
										</span>
									</p>
									<p class="vid">${it.content.encodeAsHTML()}</p>
								</div>
						</g:each>
					</div>
				</div>
				<div id="right">
					<div class="panel">
						<div class="portlet">
							<p><a href="/piano_restoration/videos/">Restoration Videos</a></p>
							<p><a href="/piano_restoration/internal/">Internal Restoration</a></p>
							<p><a href="/piano_restoration/external/">External Restoration</a></p>
							<p><a href="/piano_restoration/before_and_after/">Before &amp; After Pictures</a></p>
						</div>
					</div>
				</div>
			<g:render template="/shared/footerTemplate" />
		</div>	        
	</body>
</html>
