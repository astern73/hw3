class PlacesController < ApplicationController
  def index
    @places = Place.all
    render({ :template => "places/index.html.erb" })
  end
  
  def show
    @place = Place.find(params[:id])
    render({ :template => "places/show.html.erb" })
  end
  
  def new
    @place = Place.new
    render({ :template => "places/new.html.erb" })
  end
  
  def create
    @place = Place.new
    @place.name = params[:name]
    
    if @place.save
      redirect_to("/places")
    else
      render({ :template => "places/new.html.erb" })
    end
  end
end
