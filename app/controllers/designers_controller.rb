class DesignersController < ApplicationController
  def index
    @designers = Designer.all
  end

  def show
    @designer = Designer.find params[:id]
  end

  def create
    designer = Designer.create designer_params
    redirect_to designer_path(designer.id)
  end

  def new
    @designer = Designer.new
  end

  def edit
    @designer = Designer.find params[:id]
  end

  def update
    designer = Designer.find params[:id]
    designer.update designer_params
    redirect_to designer_path(designer.id)
  end

  def destroy
    designer = Designer.find params[:id]
    designer.destroy
    redirect_to designers_path
  end

  private
  def designer_params
    params.require(:designer).permit(:name, :dob, :company, :image, :user_id)
  end

end
