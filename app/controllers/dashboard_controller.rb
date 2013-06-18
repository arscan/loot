class DashboardController < ApplicationController

  before_filter :authenticate_user!

  def index
    "hi there"
  end
end
