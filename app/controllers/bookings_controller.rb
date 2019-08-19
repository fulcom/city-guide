class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @user = User.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.find(params[:booking_id])
  end

  def new
    @user = User.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
  end

  def create
    @user = User.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new(booking_params)
    @booking.trip = @trip
    if @booking.save
      redirect_to trip_path(@trip)
    else
      render "trips/show"
    end
  end

  def edit
    @user = User.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.find(params[:booking_id])
  end

  def update
    @user = User.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.find(params[:booking_id])
      if @booking.update(booking_params)
        redirect_to trip_booking_path(@booking)
      else render :edit
      end
  end

  def destroy
    @user = User.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.find(params[:booking_id])
    @booking.destroy
    redirect_to trip_bookings_path(@bookings)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :trip_id)
  end
end
