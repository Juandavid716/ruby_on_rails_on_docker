class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def profile
    @twitters = Twitter.all.order("created_at DESC")
    @relationships = Relationship.all
    @users = User.all#find_by_username(params[:id])
  end
end
