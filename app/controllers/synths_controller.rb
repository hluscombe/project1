class SynthsController < ApplicationController
  def index
    @synths = Synth.all
  end
  def show
    @synth = Synth.find params[:id]
    if @synth.designer_id.present?
      @designer = Designer.find @synth.designer_id
    end
  end
  def new
    @synth = Synth.new
  end
  def create
    synth = Synth.create synth_params
    redirect_to synth_path(synth.id)
  end
  def edit
    @synth = Synth.find params[:id]
  end
  def update
    synth = Synth.find params[:id]
    synth.update synth_params
    redirect_to synth_path(synth.id)
  end
  def destroy
    synth = Synth.find params[:id]
    synth.destroy
    redirect_to synths_path
  end
  private
  def synth_params
    params.require(:synth).permit(:name, :voices, :image, :designer_id, :band_ids => [])
  end
end
