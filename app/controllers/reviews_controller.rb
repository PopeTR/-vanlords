class ReviewsController < ApplicationController
  before_action :set_review, :only [:show]

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to review_path(@review)
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
