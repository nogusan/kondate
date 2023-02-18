class SpecsController < ApplicationController
  def index
  end

  def new
    @spec = Spec.new
  end

  def create
    @spec = Spec.new(spec_params)
    if @spec.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def spec_params
    params.require(:spec).permit(:user_calorie, :user_protein, :user_sugar, :user_lipid, :heigth_id,:gender_id,:age_id, :active_level_id).merge(user_id: current_user.id)
  end
end
