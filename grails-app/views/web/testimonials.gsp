<html>
	<head>
		<meta name="layout" content="main" />
		<meta name="keywords" content="Piano, Customer">
		<meta name="description" content="Customer Testimonials, Reviews and Feedback">
		<title>Customer Testimonials - Bedhampton Piano Shop</title>
	</head>
	<body>
		<div id="wrapper">
			<div id="header"></div>
			<g:render template="/shared/menuTemplate" />
			<div id="main">
				<div id="content">
					<div class="panel">
						<div class="portlet">
							<h1>What Our Customers Say</h1>
							<p>Below are some of the many emails we have received from satisfied customers regarding the quality of our work and
							high standards we constantly strive to deliver.
						</div>
						<g:each in="${testimonials.channel.item}">
							<div class="portlet">
								<h2>${it.title.encodeAsHTML()}</h2>
								<p>${it.description}</p>
							</div>
						</g:each>
					</div>
				</div>
				<div id="right">
					<div class="panel">
						<div class="portlet">
						<h2>Satisfied Customers</h2>
						<p>We pride ourselves on the high quality of personal attention we give to our customers and their pianos.</p>
						</div>
					</div>
				</div>
			<g:render template="/shared/footerTemplate" />
		</div>
	</body>
</html>