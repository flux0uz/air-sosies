class DoublesController < ApplicationController

  def index
    @doubles = policy_scope(Double)
  end

  def show
    @double = Double.find(params[:id])
    authorize @double
  end

end
