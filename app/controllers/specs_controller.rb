class SpecsController < ApplicationController
  before_action :move_to_signin
  before_action :move_to_new, except: [:index, :new]

  def index
    @spec = Spec.find_by_id(current_user)
  end

  def new
    spec = Spec.find_by_id(current_user)
    unless spec == nil  
      redirect_to "/"
    end
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

  def move_to_signin
    unless user_signed_in?
      redirect_to new_user_registration
    end
  end

  def move_to_new
    spec = Spec.find_by_id(current_user)
    if spec == nil  
      redirect_to action: :new
    end
  end
end
