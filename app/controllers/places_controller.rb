class PlacesController < ApplicationController
  def index
    @places = Place.all
    render :index
  end
  
  def show
    @place = Place.find(params[:id])
    render :show 
  end
  
  def new
    @place = Place.new
    render :new 
  end
  
  def create
    @place = Place.new
    @place.name = params[:name]
    
    if @place.save
      redirect_to("/places")
    else
      render :new
    end
  end
end
