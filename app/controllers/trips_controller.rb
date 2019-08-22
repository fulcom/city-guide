class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    # @trips = Trip.all

    @trips = Trip.geocoded #returns Trips with coordinates (based on city)
    @markers = @trips.map do |trip|
     {
       lat: trip.latitude,
       lng: trip.longitude,
       infoWindow: render_to_string(partial: "info_window", locals: { trip: trip }),
       image_url: helpers.asset_url('http://www.pngall.com/wp-content/uploads/2017/05/Map-Marker-PNG-Pic.png')
     }

    end
  end

  def show
    @trip = Trip.find(params[:id])
    @booking = Booking.new
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trips_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @trip.update(trip_params)
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  def destroy
    @trip.destroy
    redirect_to trips_path
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name, :city, :description, :photo)
  end
end
