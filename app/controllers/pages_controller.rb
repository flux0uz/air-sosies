class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @doubles = current_user.doubles.includes(:photo_attachment)
    @bookings = current_user.bookings
  end
end
