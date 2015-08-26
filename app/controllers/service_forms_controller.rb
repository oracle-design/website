class ServiceFormsController < ApplicationController
  def create
    @form = ServiceForm.new(form_params)

    message = [
      "時間：#{Time.now.to_s}",
      "===============================================",
      "Email：#{@form[:email]}",
      "Name：#{@form[:name]}",
      "案件類型：#{@form.class.human_enum_name(:project_type, @form.public_send(:project_type))}",
      "預算範圍：#{@form.class.human_enum_name(:budget_range, @form.public_send(:budget_range))}",
      "其他敘述：\n#{@form[:description]}"
    ].join("\n\n")

    if @form.save
      SlackNotify.new(message: message, username: '案件需求通知', channel: '#customers-message')
      flash[:success] = '訊息已送出，將盡快與您聯絡。'
      redirect_to :back
    else
      flash[:error] = '請檢查欄位'
      redirect_to :back
    end
  end

  private

  def form_params
    params.require(:service_form).permit(:email, :name, :project_type, :budget_range, :description)
  end
end
