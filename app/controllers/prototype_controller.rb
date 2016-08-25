class PrototypeController < ApplicationController
  def index
    @form = ServiceForm.new
    @members = Member.includes(:social_services).all
  end

  def letsencrypt
    render text: '6ySsUq9KB0BXV-heinj1n9YIMJckJCxTNYacai91XCI.AWJxdJEU0yjjycPFNBU9ZHj-_XcRknJRsIplUXpacoI'
  end
end
