class StaticPagesController < ApplicationController

  def privacy
  end

  def terms
  end

  def login
    @user = User.new
  end
end
