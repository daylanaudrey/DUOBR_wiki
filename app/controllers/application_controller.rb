class ApplicationController < ActionController::Base
	before_action :authenticate_user!
  protect_from_forgery with: :exception

  def current_project
  	Project.first
  end
end
