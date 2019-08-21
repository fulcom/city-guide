class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @trips = Trip.all
    @last_trip1 = @trips[-1]
    @last_trip2 = @trips[-2]
    @last_trip3 = @trips[-3]
  end
end
