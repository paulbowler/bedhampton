<html>
	<head>
		<meta name="layout" content="main" />
		<meta name="keywords" content="Grand, Piano, Pianos, Sale">
		<meta name="description" content="Grand Pianos for Sale">
		<title>${xml.channel.title.encodeAsHTML()} for Sale - Bedhampton Piano Shop</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
		<link rel="stylesheet" href="/css/prettyPhoto.css" type="text/css" media="screen" charset="utf-8" />
		<script src="/js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(document).ready(function(){
    			$("a[rel^='prettyPhoto']").prettyPhoto();
  			});
		</script>
		<style type="text/css">
		#gallery {
			background-color: #fff;
			padding: 5px 0px 0px 0px;
			width: 100%;
		}
		#gallery ul { list-style-type: none; padding: 0px; margin: 10px;}
		#gallery ul li { display: inline; padding: 0px 5px 0px 0px;}
		#gallery ul img {
			border: 4px solid #ccc;
			margin: 0px;
			padding: 2px;
		}
		#gallery ul a:hover img {
			border: 4px solid #ccc;
			margin: 0px;
			padding: 2px;
		}
		#gallery ul a:hover { color: #fff; }
		</style>
	</head>
	<body>
		<div id="wrapper">
			<div id="header"></div>
			<g:render template="/shared/menuTemplate" />
			<div id="main">
				<div id="content">
					<div class="panel">
						<div class="${xml.channel.description.toString().contains("SOLD") ? 'sold' : 'portlet'}">
							<h1>${xml.channel.title.encodeAsHTML()}</h1>
							<p>${xml.channel.description.encodeAsHTML()}</p>
						</div>
					</div>
					<div class="panel">
						<div class="portlet" id="gallery">
							<h2>Click on the pictures below for a slideshow or video</h2>
							<ul>
								<g:each in="${xml.channel.item}">
									<li>
										<g:if test="${it.group.content[3]}">
											<a href="${it.link.text()}">
										</g:if>
										<g:else>
											<a rel="prettyPhoto[pp_gal]" href="${it.group.content[0].@url}" title="${it.title.encodeAsHTML()}">
										</g:else>
										<img src="${it.group.thumbnail[1].@url}" width="${it.group.thumbnail[1].@width}" height="${it.group.thumbnail[1].@height}" alt="${xml.channel.title.encodeAsHTML()}"/>
										</a>
									</li>
								</g:each>
							</ul>
						</div>
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
