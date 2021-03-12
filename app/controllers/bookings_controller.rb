class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new ]

  def new
    @booking = Booking.new
  end
end
