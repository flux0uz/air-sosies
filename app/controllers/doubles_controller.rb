class DoublesController < ApplicationController

  def Index
    @doubles = Double.all
  end

  def Show
    @double = Double.find(parmas[:id])
  end

end
