class DoubleMailer < ApplicationMailer
  def create_confirmation
    @double = params[:double]

    mail(
      to:       @double.user.email,
      subject:  "Double #{@double.name} created!"
    )
  end
end