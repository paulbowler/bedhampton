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
						<p>Bedhampton Pianoshop was established in 1988, and we have been buying, selling and restoring pianos ever since. We always have a selection of <g:link action="pianosForSale">pianos for sale</g:link>. Our aim is to stock a range of restored <g:link action="restoredPianos">upright pianos</g:link>, <g:link action="grandPianos">grand pianos</g:link> and <g:link action="modernPianos">modern pianos</g:link>, with something to accommodate all requirements, tastes and budgets.</p>
						<p>Our second hand stock is professionally reconditioned, with the benefit of over 20 years’ experience in all aspects of restoration, and an extensive network of expert technicians. We can also carry out work on your own piano, and will undertake anything from a small repair to a complete rebuild. We cover large parts of Hampshire, West Sussex, Surrey and Dorset, but also serve customers from further afield, and pianos can be delivered nationwide.</p>
						<p>We have the ability to carry out almost any aspect of restoration, however large or small, and we are able to do most jobs in-house, keeping costs low. Our most common restoration procedures include action reconditioning and repairs, regulation, restringing, cleaning or repolishing of casework and cleaning or re-covering of keys. Please visit our <g:link action="restoration">piano restoration</g:link> or <g:link action="video">video</g:link> pages for further details and examples of our work.</p>
						<p>
							<a class="lightbox" href="/static/images/home/large/piano.jpg" title="Restored Piano">
								<img id="restoredpiano" src="/static/images/home/piano.jpg" alt="Restored Piano">
							</a>
						<p>
						<p>Whether you are looking to buy a piano, or are considering having your own piano restored, we provide everything you need. We offer friendly, honest and practical advice, professional collection and delivery services and complete aftersales support.  Our customers are often fully involved in the restoration process, with regular photo and video updates giving the experience a personal touch. Our customer service is second to none (read our <g:link action="testimonials">customer testimonials</g:link>). We fully recognise that it is you that keeps us in business, and your satisfaction is our priority.</p>
						<p>Over time we have worked on and sold many of the great piano makes including Steinway, Bluthner, Bechstein, Grotrian Steinweg, John Broadwood, Knight, Welmar, Hopkinson, Chappell, Challen, Marshall &amp; Rose, John Brinsmead, Kaps, Richard Lipp, Ed Seiler, Scheidmayer, Schimmell, Gors &amp; Kallmann, Yamaha and Kawai. If you are searching for a particular piano, please <g:link action="contact">get in touch</g:link> to see if we can help.</p>
						<p>Our showroom and workshop are ideally situated in <g:link action="contact">Bedhampton</g:link>, near Havant in Hampshire. We are only 15 minutes drive from Portsmouth, Fareham, Petersfield and Chichester, and just 2 minutes from both the A27 and A3M. Free parking is available on our forecourt. Please view our <g:link action="contact">contact page</g:link> for opening hours.</p>
						<p>If you need more help or advise please contact me directly on 02392 484802.
						</p>
						<p><strong>Graham Nicholls (Director)</strong></p> 
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
