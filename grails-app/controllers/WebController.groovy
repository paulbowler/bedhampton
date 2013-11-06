class WebController {
	def contentService

    def refresh = {
		contentService.refresh()
		redirect(action:'index')
	}

	def index = {
		[notice:contentService.notice, news:contentService.news, pianos:contentService.pianos]
	}
	
	def pianosForSale = {
		[pianos:contentService.pianos, areas:contentService.areas]
	}
	
	def restoration = { }
	
	def internal = { }
	
	def external = { }
	
	def beforeafter = { }
	
	def contact = {
		[hours:contentService.hours]
	}
	
	def sell = { }
	
	def modernPianos = {
		[pianos:contentService.pianos]
	}
	
	def restoredPianos = {
		[pianos:contentService.pianos]
	}
	
	def grandPianos = {
		[pianos:contentService.pianos]
	}
	
	def testimonials = {
		[testimonials:contentService.testimonials]
	}
	
	def stools = {
		[stools:contentService.stools, stooldata:contentService.stooldata]
	}
	
	def piano = {
		def url = "http://picasaweb.google.com/data/feed/base/user/bedhamptonpianoshop/albumid/${params.id}?alt=rss&kind=photo&hl=en_US"
		def slurp = new XmlSlurper()
		def xml = slurp.parse(url)
		[xml:xml]
	}

	def video = {
		[videos:contentService.videos]
	}
}
