class SubscriptionsController < ApplicationController

  before_action :authenticate_user!

  def create
    @subscription = Subscription.new(
      team: Team.find(params[:team_id].to_i),
      user: User.find(current_user.id)
    )

    if @subscription.save
      render json: @subscription, status: :created
    else
      render json: @subscription.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @subscription = Subscription.where(user: User.find(params[:id].to_i))[0]
    @subscription.destroy
  end

end
