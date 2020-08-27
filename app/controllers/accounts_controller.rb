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
    @van = booking.van # should find the booking_id coupled
    # van_id to display info
    # user_id to display user info of van
    # display total price (math price per night times period of time)
    # should have at the top a availibilty visible (confirmed, pending)
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
