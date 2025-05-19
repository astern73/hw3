class EntriesController < ApplicationController
  def new
    @entry = Entry.new
    @place_id = params[:place_id]
    render({ :template => "entries/new.html.erb" })
  end
  
  def create
    @entry = Entry.new
    @entry.title = params[:title]
    @entry.description = params[:description]
    @entry.posted_on = params[:posted_on]
    @entry.place_id = params[:place_id]
    
    if @entry.save
      redirect_to("/places/#{@entry.place_id}")
    else
      render({ :template => "entries/new.html.erb" })
    end
  end
end
