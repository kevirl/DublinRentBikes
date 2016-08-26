module SessionsHelper
  
  # Logs in a user
  def log_in(user)
    session[:user_id] = user.id
  end
  
  # Returns current user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  # Check if user logged in
  def logged_in?
    !current_user.nil?
  end
  
  # Log user out
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
  
end
