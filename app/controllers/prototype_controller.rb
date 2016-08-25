class PrototypeController < ApplicationController
  def index
    @form = ServiceForm.new
    @members = Member.includes(:social_services).all
  end

  def letsencrypt
    render text: '_KoUO-WSWw1Tb0dcXwSehugTZxOptunuf2K6FtYlGyg.AWJxdJEU0yjjycPFNBU9ZHj-_XcRknJRsIplUXpacoI'
  end
end
