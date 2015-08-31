class Member::MembersController < AdminController
  def index
    @members = Member.all
  end
end
