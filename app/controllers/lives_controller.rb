class LivesController < ApplicationController

  def index
    @booking = current_user.bookings.find(params[:booking_id])

    # check that current user has indeed booked and paid the show
    if @booking.state == 'paid'

    else
      redirect_to show_path(@booking.show)
    end
  end
end
