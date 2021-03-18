class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def new
    @show = Show.find(params[:show_id])
    @booking = Booking.new
  end

  def create
    @show = Show.find(params[:show_id])
    @booking = Booking.new(
      nb_tickets: params[:nb_tickets].to_i,
      show: @show,
      user: current_user,
      amount: @show.price * params[:nb_tickets].to_i
    )

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'bookings/new'
    end
  end

  def show
  end

end
