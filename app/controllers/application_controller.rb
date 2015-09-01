class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

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

  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:name, :message, :avatar, :work_field, :profession,
          :email, :password, :password_confirmation)
      end
      devise_parameter_sanitizer.for(:account_update) do |u|
        u.permit(:name, :message, :avatar, :work_field, :profession,
          :email, :password, :password_confirmation, :current_password)
      end
    end
end
