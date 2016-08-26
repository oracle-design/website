class PrototypeController < ApplicationController
  def index
    @form = ServiceForm.new
    @members = Member.includes(:social_services).all
  end
end
