class PlansController < ApplicationController
  before_action :authenticate_user!

  def index
    @plans = Plan.all
  end

  def subscribe
    @plan = Plan.find(params[:id])
    if current_user.update(plan: @plan)
      redirect_to root_path, notice: "You have subscribed to the #{@plan.name} plan."
    else
      redirect_to plans_path, alert: "Unable to subscribe to the plan."
    end
  end

end
