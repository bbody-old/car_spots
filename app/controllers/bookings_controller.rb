class BookingsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  #before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.where(user_id: current_user)
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
    @booking = Booking.find(params[:id])
  end

  # POST /bookings
  # POST /bookings.json
  def create
    unless (Booking.where(user_id: current_user, car_park_id: params["car_park_id"]).nil?)
      #@booking = Booking.update(booking_params)
      Booking.where(user_id: current_user, car_park_id: booking_params["car_park_id"]).delete_all
    end

    @booking = Booking.new(booking_params)
    @booking.user = current_user

    respond_to do |format|
      if @booking.save
        format.html { redirect_to bookings_url, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:mon, :tues, :wed, :thurs, :fri, :user_id, :car_park_id, :car_parks)
    end
end
