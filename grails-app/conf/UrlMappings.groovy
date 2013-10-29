class UrlMappings {
    static mappings = {
      "/"(controller:"web", action:"index")
	  "/refresh"(controller:"web", action:"refresh")
	  "/pianos_for_sale"(controller:"web", action:"pianosForSale")
	  "/pianos_for_sale/modern_pianos"(controller:"web", action:"modernPianos")
	  "/pianos_for_sale/restored_pianos"(controller:"web", action:"restoredPianos")
	  "/pianos_for_sale/grand_pianos"(controller:"web", action:"grandPianos")
	  "/customer_testimonials"(controller:"web", action:"testimonials")
	  "/piano_stools"(controller:"web", action:"stools")
	  "/piano_restoration"(controller:"web", action:"restoration")
	  "/piano_restoration/internal"(controller:"web", action:"internal")
	  "/piano_restoration/external"(controller:"web", action:"external")
	  "/piano_restoration/before_and_after"(controller:"web", action:"beforeafter")
	  "/piano_restoration/videos"(controller:"web", action:"video")
	  "/contact"(controller:"web", action:"contact")
	  "/sell_your_piano"(controller:"web", action:"sell")
	  "/piano/${id}/${name}"(controller:"web", action:"piano")
	  "500"(view:'/error')
	}
}
