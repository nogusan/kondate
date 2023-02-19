class SchedulesController < ApplicationController
  def index
    @spec = Spec.find_by_id(current_user.id)
  end

end
