class MenusController < ApplicationController
  before_action :move_to_signin

  def index
  end

  def new
    @menu = Menu.new(menu_params)
  end

  def create
  end

  private
  def move_to_signin
    unless user_signed_in?
      redirect_to new_user_registration
    end
  end

  def menu_params
    params.permit(:name, :calorie, :protein, :sugar, :lipid, :image).merge(user_id: current_user.id)
  end
end
