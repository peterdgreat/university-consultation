class ConsultantRequestsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin!, only: [:index, :approve]

  def create
    current_user.request_consultant!
    redirect_to root_path, notice: 'Your request to become a consultant has been submitted.'
  end

  def index
    @consultant_requests = ConsultantRequest.where(status: 'pending')
  end

  def approve
    @consultant_request = ConsultantRequest.find(params[:id])
    @consultant_request.update(status: 'approved')
    @consultant_request.user.approve_consultant!
    redirect_to consultant_requests_path, notice: 'Consultant request approved.'
  end

  private

  def authorize_admin!
    redirect_to root_path, alert: 'Access denied.' unless current_user.has_role?(:admin)
  end

end
