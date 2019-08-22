class BookingsController < ApplicationController
  def index
    # @bookings = Booking.all
    # @trip = Trip.find(params[:trip_id])
    # @user = current_user
    # raise
  end

  def show
    @booking = Booking.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    @user = User.find(@booking[:user_id])
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new(booking_params)
    @booking.trip = @trip
    @booking.user = current_user
    if @booking.save
      redirect_to trip_booking_path(@trip, @booking)
    else
      render "trips/show"
    end
  end

  def edit
    @booking = Booking.find(params[:booking_id])
  end

  def update
    @booking = Booking.find(params[:booking_id])
      if @booking.update(booking_params)
        redirect_to trip_booking_path(@booking)
      else render :edit
      end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.user = current_user
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :trip_id)
  end
end
