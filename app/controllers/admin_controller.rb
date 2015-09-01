class AdminController < ApplicationController
  layout 'member'

  before_action :authenticate_member!
end
