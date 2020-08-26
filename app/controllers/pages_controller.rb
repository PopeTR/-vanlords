class PagesController < ApplicationController
   before_action :authenticate_user!, only: [:new]
  def home
    @vans = Van.all
  end
end
