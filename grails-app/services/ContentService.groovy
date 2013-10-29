class ContentService {
    boolean transactional = true

	def pianos
	def news
	def notice
	def testimonials
	def videos
	def stools
	def stooldata
	def hours
	def areas
	def grandVideos
	
	def refresh() {
		pianos = null
		getPianos()
		news = null;
		getNews()
		notice = null
		getNotice()
		testimonials = null;
		getTestimonials()
		videos = null
		getVideos()
		stools = null
		getStools()
		stooldata = null
		getStooldata()
		hours = null
		getHours()
		areas = null
		getAreas()
		grandVideos = null
		getGrandVideos()
	}

    def getPianos() {
		if (!pianos) {
			def url = "http://picasaweb.google.com/data/feed/base/user/bedhamptonpianoshop?kind=album&alt=rss&hl=en_US&access=public&thumbsize=144u"
			def slurp = new XmlSlurper()
			pianos = slurp.parse(url)
		}
		return pianos
    }

	def getNews() {
		if (!news) {
			def url = "http://bedhamptonpianoshop.blogspot.com/feeds/posts/default/-/News?alt=rss"
			def slurp = new XmlSlurper()
			news = slurp.parse(url)
		}
		return news
    }

	def getNotice() {
		if (!notice) {
			def url = "http://bedhamptonpianoshop.blogspot.com/feeds/posts/default/-/Notice?alt=rss"
			def slurp = new XmlSlurper()
			notice = slurp.parse(url)
		}
		return notice
    }

	def getTestimonials() {
		if (!testimonials) {
			def url = "http://bedhamptonpianoshop.blogspot.com/feeds/posts/default/-/Testimonial?alt=rss&max-results=1000"
			def slurp = new XmlSlurper()
			testimonials = slurp.parse(url)
		}
		return testimonials
    }
    
    def getGrandVideos() {
    	if (!grandVideos) {
			def url = "http://gdata.youtube.com/feeds/api/users/pianorestorer2009/uploads?category=Sale,Grand"
			def slurp = new XmlSlurper()
			grandVideos = slurp.parse(url)
		}
		return grandVideos
    }

	def getVideos() {
		if (!videos) {
			def url = "http://gdata.youtube.com/feeds/api/users/pianorestorer2009/uploads?q=Restoration"
			def slurp = new XmlSlurper()
			videos = slurp.parse(url)
		}
		return videos
    }

	def getStools() {
		if (!stools) {
			def url = "http://picasaweb.google.com/data/feed/api/user/bedhamptonpianoshop/album/Stools?kind=photo&alt=rss&hl=en_US&access=public&thumbsize=144u"
			def slurp = new XmlSlurper()
			stools = slurp.parse(url)
		}
		return stools
    }

	def getStooldata() {
		if (!stooldata) {
			def url = "http://bedhamptonpianoshop.blogspot.com/feeds/posts/default/-/Stool?alt=rss"
			def slurp = new XmlSlurper()
			stooldata = slurp.parse(url)
		}
		return stooldata
    }

	def getHours() {
		if (!hours) {
			def url = "http://bedhamptonpianoshop.blogspot.com/feeds/posts/default/-/Hours?alt=rss"
			def slurp = new XmlSlurper()
			hours = slurp.parse(url)
		}
		return hours
	}
	
	def getAreas() {
		if (!areas) {
			def url = "http://bedhamptonpianoshop.blogspot.com/feeds/posts/default/-/Areas?alt=rss"
			def slurp = new XmlSlurper()
			areas = slurp.parse(url)
		}
		return areas
	}

}
