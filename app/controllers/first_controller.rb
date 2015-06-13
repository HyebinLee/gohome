class FirstController < ApplicationController
  def index
    @join=Join.all
    if @join.empty?
      session[:user_id]=nil
    end
    @shop=Shop.order_by_rand.limit(3).all
  end
  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
  def popup
  end
end
