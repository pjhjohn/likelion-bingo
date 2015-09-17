class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def session_required
    if session[:id].nil? or User.find_by_id(session[:id]).nil?
      redirect_to "/"
    end
  end
end
