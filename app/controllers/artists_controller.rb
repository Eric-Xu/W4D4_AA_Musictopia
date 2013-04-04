class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new ##GET
    @artist = Artist.new
  end

  def create ##POST, gets called on form submit
    @artist = Artist.new(params[:artist])
    if @artist.save
      redirect_to artist_url(@artist)
    else
      render :new
    end
  end

  def edit ##GET
    @artist = Artist.find(params[:id])
  end

  def update ##PUT
    @artist = Artist.find(params[:id])
    if @artist.update_attributes(params[:artist])
      redirect_to artist_url(@artist)
    else
      render :edit
    end
  end

  def destroy ##DELETE
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_url
  end
end