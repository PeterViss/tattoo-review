class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = find_artist
  end


  def create
    @artist = Artist.create(artist_params)
  end

  def edit
    @artist = find_artist
  end

  def update
    @artist.update(artist_params)
    redirect_to @artist

  end

  def destroy
    @artist.destroy
    redirect_to artists_path

  end

  private

  def find_artist
    Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :years_exp)
  end
end
