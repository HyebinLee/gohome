class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :username
  helper_method :reviewproduct
  helper_method :shoptype

  def current_user
    if session[:user_id] == nil || session[:user_id]== -1
      @sessNum=2;
    else
      @sessName=Join.find(session[:user_id]).name
      if @sessName == "관리자"
        @sessNum=0;
      else
        @sessNum=1;
      end
    end
  end
 
  def username
    @sessName=Join.find(session[:user_id]).name
  end
  def reviewproduct
    @revName=Shop.find(session[:review]).product
  end
  def shoptype
    @stype;
  end

end
