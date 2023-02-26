class MenusController < ApplicationController
  before_action :move_to_signin

  def index
  end

  def new
    @menu = Menu.new
  end

  def create
    menu = Menu.new(menu_params)
    if menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @menus = Menu.all 
    @menu = Menu.where(menu_id: @menus.id).each { |m| m }
  end

  private
  def move_to_signin
    unless user_signed_in?
      redirect_to new_user_registration
    end
  end

  def menu_params
    params.require(:menu).permit(:name, :calorie, :protein, :sugar, :lipid, :image).merge(user_id: current_user.id)
  end
end
