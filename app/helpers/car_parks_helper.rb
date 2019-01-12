module CarParksHelper

	def maps_embed lng, lat
		ret = '<iframe id="map-canvas" width="100%" height="100%" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q='
		ret += lat.to_s
		ret += '%2C%20'
		ret += lng.to_s
		ret += '&key=AIzaSyBOhMxRcWzuugfL0PyXW6SBkXUVF_R2Ahk"></iframe>'
		return ret
	end

	def english_rep bool
		if bool == true
			'<i class="fa fa-check-circle"></i>'
		else
			'<i class="fa fa-circle-thin"></i>'
		end
	end
end
