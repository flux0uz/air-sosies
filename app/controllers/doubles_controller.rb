class DoublesController < ApplicationController
  before_action :set_double, only: [ :show, :edit, :update, :destroy ]
  def index
    @doubles = policy_scope(Double)
  end

  def show
    authorize @double
  end

  def new
    @double = Double.new
    authorize @double
  end

  def create
    @double = Double.new(double_params)
    authorize @double
    @double.user = current_user
    if @double.save
      redirect_to double_path(@double)
    else
      render :new
    end
  end

  def edit
    authorize @double
  end

  def update
    authorize @double
    @double.user = current_user
    if @double.save
      redirect_to double_path
    else
      render :new
    end
  end

  def destroy
    @double.destroy
    authorize @double
    redirect_to doubles_path
  end

  private
  def set_double
    @double = Double.find(params[:id])
  end
  def double_params
    params.require(:double).permit(:price, :name, :address, :category)
  end
end
