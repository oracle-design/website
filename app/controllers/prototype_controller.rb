class PrototypeController < ApplicationController

  def index
    @form = ServiceForm.new
    @members = Member.all
  end

end
