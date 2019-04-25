class PagesController < ApplicationController
  def home
    @user = User.new
    @designer = Designer.find_by :user_id => session[:user_id]
  end
end
