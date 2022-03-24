class BookingsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :create]

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.room_id = params[:room_id]

    @booking.save

    redirect_to room_path(room.id)
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
