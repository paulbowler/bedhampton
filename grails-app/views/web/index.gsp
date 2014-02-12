<html>
    <head>
        <meta name="layout" content="main" />
		<meta name="keywords" content="Piano, Pianos, Shop, Sale, Restoration, Stools, Bedhampton, Hampshire, Havant">
		<meta name="description" content="Piano Sales, Restoration and Stools">
		<script type="text/javascript" src="/static/lib/jquery-1.2.3.pack.js"></script>
		<script type="text/javascript" src="/static/lib/jquery.jcarousel.pack.js"></script>
		<link rel="stylesheet" type="text/css" href="/static/lib/jquery.jcarousel.css" />
		<link rel="stylesheet" type="text/css" href="/static/skins/tango/skin.css" />
		<script type="text/javascript" src="/js/jquery.lightbox-0.5.js"></script>
		<link rel="stylesheet" type="text/css" href="/css/jquery.lightbox-0.5.css" media="screen" />
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
				$(function() {
					$('a.lightbox').lightBox();
				});
			});
		</script>
	</head>
	<body>
		<div id="wrapper">
			<div id="header"></div>
			<g:render template="/shared/menuTemplate" />
			<div id="main">
				<div id="content">
					<g:render template="/shared/carouselTemplate" model="[pianos:pianos]"/>
					<div class="panel">
						<div class="portlet">
							<h1>Bedhampton Piano Shop</h1>
							<p>
								<a class="lightbox" href="/static/images/home/large/shopfront.jpg" title="Bedhampton Piano Shopfront">
									<img id="shop" src="/static/images/home/shopfront.jpg" alt="Bedhampton Piano Shopfront">
								</a>
							<p>
							<p>Are you looking for an immaculately restored piano? Would you like your piano repaired by professionals? Is it time to sell your piano? If the answer's yes you're in the right place.</p>

							<p>Our friendly, helpful and knowledgeable team of piano experts will help you make the right decision and with over 25 years' experience of <a href="/pianos_for_sale/">buying</a>, <a href="/sell_your_piano/">selling</a> and <a href="/piano_restoration/">restoring</a> pianos under our belts, you're in safe hands.</p>

							<p>Bedhampton Pianoshop is an Aladdin's cave of high quality reconditioned <a href="/pianos_for_sale/">pianos for sale</a> and we've something for every taste, budget and requirement - <a href="/pianos_for_sale/restored_pianos/">upright pianos</a>, <a href="/pianos_for_sale/grand_pianos/">grand pianos</a>, and <a href="/pianos_for_sale/modern_pianos/">modern pianos</a> - as well as our extensive collection of made to measure <a href="/piano_stools/">piano stools</a>.</p>

							<p>And if your piano is in need of some care and attention we'll happily undertake repairs of all sizes, mostly in-house, including a complete rebuild. </p>
							<a class="lightbox" href="/static/images/home/large/piano.jpg" title="Restored Piano">
								<img id="restoredpiano" src="/static/images/home/piano.jpg" alt="Restored Piano">
							</a>

							<p>Just some of the great piano names we've worked on include Steinway, Bluthner, Bechstein, Grotrian Steinweg, John Broadwood, Knight, Welmar, Hopkinson, Chappell, Challen, Marshall & Rose, John Brinsmead, Kaps, Richard Lipp, Ed Seiler, Scheidmayer, Schimmell, Gors & Kallmann, Yamaha and Kawai. </p>

							<p>Our showroom and workshop is located on the south coast close to the A3 and A27 but our customers are local, national and international so wherever you're based, you can tap into our exceptional service and outstanding stock of restored and pre-loved pianos. </p>

							<p>We offer a professional collection and delivery service and our after sales support comes as standard.</p>

							<p>But don't take our word for it - see some of our pianos in action or read what our customers say. We're happy to provide a quote, advice and assistance free of charge so <a href="/contact/">contact us</a> on 02392 484802 or email <a href="mailto:sales@bpspianos.com">sales@bpspianos.com</a> today.<p>
							<p>
						</div>
					</div>
				</div>

				<div id="right">
					<g:if test="${notice.channel.totalResults != 0}">
						<div class="panel">
							<div class="portlet">
								<h2>${notice?.channel?.item.title[0].encodeAsHTML()}</h2>
								<p>${notice?.channel?.item[0].description}</p>
							</div>
						</div>
					</g:if>
					<div class="panel">
						<div class="portlet">
							<h2 style="color: red;">Latest News</h2>
							<g:each in="${news.channel.item[0]}">
								<p><a href="${it.link}">${it.description}</a></p>
							</g:each>
						</div>		
					</div>
					<div class="panel">
						<div class="portlet">
						<h2><a href="/pianos_for_sale/">Pianos for Sale</a></h2>
						<p>View our selection of
						<a href="pianos_for_sale/modern_pianos/">modern pianos</a>, <a href="pianos_for_sale/restored_pianos/">restored pianos</a> and
						<a href="pianos_for_sale/grand_pianos/">grand pianos</a> currently in stock.</p>
						</div>
					</div>
					<div class="panel">
						<div class="portlet">
						<h2><a href="piano_restoration.html">Piano Restoration</a></h2>
						<p>See the <a href="/piano_restoration/">piano restoration</a> pages for examples of quality of our work and the range of our expertise, or
						<a href="mailto:reconditioning@bpspianos.com">email us for a quote</a></p>
						</div>
					</div>
				</div>
			<g:render template="/shared/footerTemplate" />
		</div>
	</body>
</html>
