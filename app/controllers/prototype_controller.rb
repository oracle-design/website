class PrototypeController < ApplicationController

  def index
    @form = ServiceForm.new
  end

end
