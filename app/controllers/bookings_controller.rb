class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def new
    @show = Show.find(params[:show_id])
    @booking = Booking.new
  end

  def create
    @show = Show.find(params[:show_id])
    @booking = Booking.create!(
      sku: "#{@show.name} - #{@show.artist.name}",
      nb_tickets: params[:nb_tickets].to_i,
      show: @show,
      user: current_user,
      amount: @show.price * params[:nb_tickets].to_i,
      state: 'pending'
    )

    # if @booking.save
    #   redirect_to booking_path(@booking)
    # else
    #   render 'bookings/new'
    # end

    session = Stripe::Checkout::Session.create(
       payment_method_types: ['card'],
       line_items: [{
         name: @booking.sku,
         images: [Cloudinary::Utils.cloudinary_url(@show.thumbnail.key)],
         amount: @booking.amount_cents,
         currency: 'eur',
         quantity: @booking.nb_tickets
       }],
       success_url: booking_url(@booking),
       cancel_url: booking_url(@booking)
     )

     @booking.update(checkout_session_id: session.id)
     redirect_to new_booking_payment_path(@booking)
  end

  def show
  end

end
