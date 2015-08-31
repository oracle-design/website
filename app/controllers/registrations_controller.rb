class RegistrationsController < Devise::RegistrationsController
  def new
    flash[:success] = 'Hello, 若想加入我們，歡迎您將送 Resume 到 hr@oddesign.expert'
    redirect_to root_path
  end

  def create
    flash[:success] = 'Hello, 若想加入我們，歡迎您將送 Resume 到 hr@oddesign.expert'
    redirect_to root_path
  end
end
