class PrototypeController < ApplicationController
  def index
    @form = ServiceForm.new
    @members = Member.includes(:social_services).all
  end

  def letsencrypt
    render text: '4AEXX5O-e1PoQw-ccDY_YS56Ps_nO2gR8_69-clCA6s.AWJxdJEU0yjjycPFNBU9ZHj-_XcRknJRsIplUXpacoI'
  end
end
