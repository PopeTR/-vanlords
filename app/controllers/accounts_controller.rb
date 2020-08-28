class AccountsController < ApplicationController
  before_action :set_account, only: [:index, :show]


  def show
    @account = User.find(current_user.id)
    # render @account
  end

   def trips
    # get all instances of booking where user_id == current_user
    @all_bookings = current_user.bookings
  end


  def booking
    @booking = Booking.find(params[:id])
    @van = Van.find(@booking.van_id)
  end

  def create_booking
    @van = Van.find(params[:id])
    @booking = Booking.new()
    @booking.user = current_user
    @booking.van = @van
    @booking.start_date = params[:start_date]
    @booking.end_date = params[:end_date]
    @booking.total_price = (params[:end_date].to_date - params[:start_date].to_date) * @van.price_per_night
    @booking.save!
    redirect_to view_booking_path(@booking)
  end


   def guests
    # get all instances of booking where user_id == current_user
    @guests = current_user.guests
    @all_guests = current_user.guests
    raise
  end


  def guest

    @booking = Booking.find(params[:id])
    @van = @booking.van
    @guest = @booking.user
    # should find the booking_id coupled
    # van_id to display info
    # user_id to display user info of van
    # display total price (math price per night times period of time)
    # should have at the top a availibilty visible (confirmed, pending)
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.booking_status = 1
    @booking.save!
    redirect_back
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.booking_status = 0
    @booking.save!
    redirect_back
  end

  private

  def set_account
  end
  # @current_user ||= User.find_by(id: session[:user_id])

  #   if params[:id]
  #     @account = Account.find(params[:id])
  #   else
  #     @account = current_user[:account]
  #   end
  # end
end

# In our application, we can reference a generic account with account_path(:id)
# while still having current_account_path to direct the user to their own account.

# >> we need the page to work when user is logged in.
# >> first we need a LOG OUT / SIGN OUT page !!
