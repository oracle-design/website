class Member::SocialServicesController < ApplicationController
  def create
    @service = current_member.social_services.new(service_params)
    if @service.save
      flash[:success] = "已經新增 #{@service.service}"
      redirect_to :back
    else
      flash[:error] = "請檢查欄位是否填妥"
      redirect_to :back
    end
  end

  def destroy
    @service = SocialService.find(params[:id])
    @service.destroy

    flash[:success] = "#{@service.service} 已經刪除"

    redirect_to :back
  end

  private

  def service_params
    params.require(:social_service).permit(:service, :link, :member_id)
  end
end
