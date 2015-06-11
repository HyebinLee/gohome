class FirstController < ApplicationController
  def index
    @join=Join.all
    if @join.empty?
      session[:user_id]=nil
    end
  end
  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
  def popup
  end
end
