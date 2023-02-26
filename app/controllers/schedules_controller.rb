class SchedulesController < ApplicationController
  def index
    @spec = Spec.find_by_id(current_user)
    @menus = Menu.all.order("created_at DESC")
  end

end
