class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def date_time
    boat.update_at.strftime("Last Update, %A, %b, %e, at %1:M %p")
  end 
end
