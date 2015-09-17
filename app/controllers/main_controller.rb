class MainController < ApplicationController
  def index
  end

  def enter
    user = User.where(nickname: params[:nickname]).first
    if user.nil?
      user2create = User.new
      user2create.nickname = params[:nickname]
      user2create.save
      session[:id] = user2create.id
      redirect_to "/bingo"
    else
      redirect_to :back, alert: "User Duplicated. Create new one"
    end
  end
end
