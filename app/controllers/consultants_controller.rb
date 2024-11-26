class ConsultantsController < ApplicationController
  before_action :authenticate_user!

  def index
    @consultants = User.with_role(:consultant)
  end

  def show
    @consultant = User.find(params[:id])
  end
end
