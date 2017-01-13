module ApplicationHelper

  # Exposes user_email to all views

  def user_email
    session[:user_email]
  end

end
