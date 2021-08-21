class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def index
    @user = current_user
    @new_user = User.new
    @incidents = Incident.where(user: @user)
  end
end
