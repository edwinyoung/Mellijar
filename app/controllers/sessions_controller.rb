class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def destroy
  end
end
