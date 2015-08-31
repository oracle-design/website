class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout_by_resource

  def current_member
    super || UnknowMember.new
  end

  private

  def layout_by_resource
    if devise_controller?
      "member"
    else
      "application"
    end
  end
end
