class SpecsController < ApplicationController
  def index
    @spec = Spec.find_by_id(current_user.id)
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

  def edit
    @spec = Spec.find(params[:id])
  end

  def update
    @spec = Spec.find(params[:id])
    if @spec.update(spec_params)
      redirect_to specs_path
    else
      render :edit
    end
  end

  private

  def spec_params
    params.require(:spec).permit(:ave_weigth, :user_calorie, :user_protein, :user_sugar, :user_lipid, :heigth_id,:gender_id,:age_id, :active_level_id).merge(user_id: current_user.id)
  end
end
