class DoublesController < ApplicationController

  def index
    @doubles = Double.all
  end

  def show
    @double = Double.find(params[:id])
  end

end
