<html>
	<head>
		<meta name="layout" content="main" />
		<meta name="keywords" content="Contact, Bedhampton, Piano, Shop">
		<meta name="description" content="Contact Bedhampton Piano Shop">
		<title>Contact Bedhampton Piano Shop</title>
		<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;sensor=false&amp;key=ABQIAAAALIfWJ4nyY8axN_0KGZuLFBRed6WMcmyJWdC6WIPL2m9f44wD7RQ6MOkCQ_7P_RA4N7yeVZJE91sZfg" type="text/javascript"></script>
		<script type="text/javascript">
		    function initialize() {
		      if (GBrowserIsCompatible()) {
		        var map = new GMap2(document.getElementById("map_canvas"));
		        map.setCenter(new GLatLng(50.855362, -1.000459), 15);
				map.addOverlay(new GMarker(new GLatLng(50.855362, -1.000459)));
				map.setUIToDefault();
		      }
		    }
		</script>
	</head>
	<body onload="initialize()" onunload="GUnload()">
		<div id="wrapper">
			<div id="header"></div>
			<g:render template="/shared/menuTemplate" />
			<div id="main">
				<div id="content">
					<div class="panel">
						<div class="portlet">
							<h2>How to find Bedhampton Piano Shop</h2>
							<p id="map_canvas"></p>
						</div>
					</div>
				</div>
				<div id="right">
					<div class="panel">
						<div class="portlet">
							<h1>Address</h1>
							<p>
								Bedhampton Piano Shop<br/>
								90 Bedhampton Road<br/>
			              		Havant<br/>
								Hampshire<br/>
			              		PO9 3EZ
			              	</p>
						</div>
						<g:if test="${hours.channel.totalResults != 0}">
							<div class="portlet">
								<h2>${hours?.channel?.item.title[0].encodeAsHTML()}</h2>
								<p>${hours?.channel?.item[0].description}</p>
							</div>
						</g:if>
						<div class="portlet">
							<h1>Telephone</h1>
			            	<p>
			            		02392 484802
			            	</p>
						</div>
						<div class="portlet">
							<h1>Email</h1>	
			            	<p align="center">
			              		<a href="mailto:%20sales@bpspianos.com">sales@bpspianos.com</a>
							</p>
						</div>
					</div>
				</div>
			<g:render template="/shared/footerTemplate" />
		</div>
	</body>
</html>
