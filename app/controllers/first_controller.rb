class FirstController < ApplicationController

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

end
