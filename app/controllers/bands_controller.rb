class BandsController < ApplicationController
  require 'rspotify'
  before_action :authenticate

  def index
    @bands = Band.all
  end
  def show
    @band = Band.find params[:id]
    artists = RSpotify::Artist.search("#{@band.name}", limit: 1, market: 'US')
    @artist = artists.first
  end
  def new
    @band = Band.new
  end
  def create
    band = Band.create band_params
    redirect_to band_path(band.id)
  end
  def edit
    @band = Band.find params[:id]
  end
  def update
    band = Band.find params[:id]
    band.update band_params
    redirect_to band_path(band.id)
  end
  def destroy
    band = Band.find params[:id]
    band.destroy
    redirect_to bands_path
  end
  private
  def authenticate
    RSpotify::authenticate("517599d3dfd54407a8285bec2c65ea68", "fc35556269234c43a9c6451320b9a605")
  end
  def band_params
    params.require(:band).permit(:name, :year_formed, :image, :synth_ids => [])
  end
end
