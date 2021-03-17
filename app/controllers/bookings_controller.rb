class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def new
    @show = Show.find(params[:show_id])
    @booking = Booking.new
  end

  def create
    @show = Show.find(params[:show_id])
    @booking = Booking.new(booking_params)
    @booking.show = @show
    @booking.user = current_user
    @booking.amount = @show.price * @booking.nb_tickets

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'bookings/new'
    end
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:nb_tickets)
  end
end
