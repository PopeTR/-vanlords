class ReviewsController < ApplicationController
  before_action :set_review, only: [:show]

  def show
  end

  def new
    @review = Review.new
    if params[:user_id].present?
      @user = User.find(params[:user_id])
    else params[:van_id].present?
      @van = Van.find(params[:van_id])
    end
  end

  def create
    @review = Review.new(params[:review].permit(:user_id)) # use some params, but make the rest underneath
    @review.description = some input
    if @review.save
      redirect_to booking_path()
    else
      render :new
    end
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params[:review].permit(:rating, :description)
  end
end
