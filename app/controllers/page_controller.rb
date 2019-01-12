class PageController < ApplicationController
  def home
  	if current_user.present?
		redirect_to car_parks_url
	end 
  end

  def about
  end

  def contact
  end
end
