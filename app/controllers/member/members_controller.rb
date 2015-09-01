class Member::MembersController < AdminController
  def social_services
    get_member_services
    @new_sns = current_member.social_services.new
  end

  def index
    @members = Member.all
  end

  private

  def get_member_services
    @sns_list = []
    current_member.social_services.each do |service|
      @sns_list << service if service.id.present?
    end
  end
end
