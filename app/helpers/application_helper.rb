module ApplicationHelper
	def bool_to_tick bool
		if bool == true
			'<i class="fa fa-check-circle"></i>'
		else
			'<i class="fa fa-circle-thin"></i>'
		end
	end

	def generate_day_cell car_park, day
		if car_park.nil?
			return "<td class='info'>" + (raw f.check_box(day)) + "</td>"
		else
			if current_user.nil?

			else
				if Booking.where(car_park_id: @car_park.id, "#{day}" => true).nil?
					return "<td class='info'>" + (raw f.check_box(day)) + "</td>"
				else
					if Booking.where(user_id: current_user, car_park_id: @car_park.id, "#{day}" => true).nil?
						return "<td class='sucess'>" + (raw f.check_box(day, {checked: true})) + "</td>"
					else
						return "<td class='danger'>X</td>"
					end

				end

			end
		end
	end

	def has_current bookings
		has = false
		bookings.each do |booking|
			if booking.user == current_user
				return true
			end
		end
		return has
	end

end
