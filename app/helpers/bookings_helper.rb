module BookingsHelper

	def get_price booking
		i = 0

		if booking.mon == true
			i += 1
		end

		if booking.tues == true
			i += 1
		end

		if booking.wed == true
			i += 1
		end

		if booking.thurs == true
			i += 1
		end

		if booking.fri == true
			i += 1
		end
		return i * 10.0
	end
end
