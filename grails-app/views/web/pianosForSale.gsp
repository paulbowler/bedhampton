<html>
	<head>
		<meta name="layout" content="main" />
		<meta name="keywords" content="pianos, piano, sale, modern, upright, grand">
		<meta name="description" content="Pianos for Sale">
		<title>Pianos for Sale - Bedhampton Piano Shop</title>
		<script type="text/javascript" src="/static/lib/jquery-1.2.3.pack.js"></script>
		<script type="text/javascript" src="/static/lib/jquery.jcarousel.pack.js"></script>
		<link rel="stylesheet" type="text/css" href="/static/lib/jquery.jcarousel.css" />
		<link rel="stylesheet" type="text/css" href="/static/skins/tango/skin.css" />
		<script type="text/javascript">
			jQuery(document).ready(function() {
		    	$('#mycarousel').jcarousel({
					scroll: 4,
					visible: 4
				});
				$('#pianos').show('slow', function() {
				    // Animation complete.
				});
				$('#pianos').css("visibility", "visible");
			});
		</script>
	</head>
	<body>
		<div id="wrapper">
			<div id="header"></div>
			<g:render template="/shared/menuTemplate" />
			<div id="main">
				<div id="content">
					<div class="panel">
						<div class="portlet">
						<h1>Pianos for Sale</h1>
						<p>At Bedhampton Piano shop we try to cater for most clients, from the humble beginner to the discerning pianist.</p>
							<p>Every customer we have is different. You can be assured when you buy from Bedhampton Piano shop whether it is a <a href="/piano_stools/">piano stool</a>,
							<a href="/pianos_for_sale/modern_pianos/">modern piano</a> or a lovingly <a href="/piano_restoration/">restored piano</a>, our customer service is excellent,
							both during the purchase and throughout our after sales services.</p>

							<p>We specialise in Fully reconditioned upright pianos and Grand pianos. We also have a selection of new and nearly new pianos for sale.</p>
							<p>If you have any questions about buying a piano,or you would like a piano we do not have in stock then please ask we are here to help.</p>
							<p>You can call on 02392 484802 or email us on our <g:link action="contact">contact</g:link> page.</p>
						</div>
						<g:render template="/shared/carouselTemplate" model="[pianos:pianos]"/>
						<g:if test="${areas.channel.totalResults != 0}">
							<div class="portlet">
								<h2>${areas?.channel?.item.title[0].encodeAsHTML()}</h2>
								<p>${areas?.channel?.item[0].description}</p>
							</div>
						</g:if>
					</div>
				</div>
				<div id="right">
					<div class="panel">
						<div class="portlet">
						<p><a href="./modern_pianos/">Modern Pianos</a></p>
						<p><a href="./restored_pianos/">Restored Pianos</a></p>
						<p><a href="./grand_pianos/">Grand Pianos</a></p>
						</div>
					</div>
				</div>
			<g:render template="/shared/footerTemplate" />
		</div>
	</body>
</html>