class SupportController < ApplicationController
  def create
    flash[:notice] = "Payment successful"
    @project = Project.find_by(id: params[:project_id])
    redirect_to @project
  end
end
