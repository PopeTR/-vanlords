class VansController < ApplicationController
  before_action :set_van, only: [:show, :edit, :update, :destroy]

  def index
    @vans = Van.geocoded
    @vans_near = @vans.near(params[:location], 20)
    @markers = @vans_near.map do |van|
      {
        lat: van.latitude,
        lng: van.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { van: van })
      }
    end
  end

  def show
  end

  def new
    @van = Van.new
  end

  def create
    @van = Van.new(van_params)
    if @van.save
      redirect_to @van
    else
      render :new
    end
  end

  def edit
  end

  def update
    @van.update(van_params)
    redirect_to van_path(@van)
  end

  def destroy
    @van.destroy
    redirect_to vans_path
  end

  private

  def van_params
    params.require(:van).permit(:title, :description, :photo)
  end

  def set_van
    @van = Van.find(params[:id])
  end
end
