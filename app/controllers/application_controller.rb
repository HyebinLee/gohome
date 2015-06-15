class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :itemimage
  helper_method :itemproduct
  helper_method :itemprice

  helper_method :current_user
  helper_method :username
  helper_method :userid
  helper_method :useremail
  helper_method :userbirth
  helper_method :useraddress
  helper_method :reviewproduct
 
  helper_method :delivery
<<<<<<< HEAD
  #helper_method :sendmail
  #helper_method :buyimage
  #helper_method :buyproduct
  #helper_method :buyprice

#  helper_method :shoptype
=======

>>>>>>> 20ddea8bc575a4e8b2ed468e7bd826e3dd69a2dc
  def delivery
    if session[:time] == nil || session[:time] == -1
      @sessDelivery=0;
    else
      @sessDelivery=Count.find(session[:time]).time
    end
  end
<<<<<<< HEAD
=======

>>>>>>> 20ddea8bc575a4e8b2ed468e7bd826e3dd69a2dc
  def itemimage
    @sessImage=Shop.find(session[:item]).image
  end
  def itemproduct
    @sessProduct=Shop.find(session[:item]).product
  end
  def itemprice
    @sessPrice=Shop.find(session[:item]).price
  end

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
   def userid
    @sessID=Join.find(session[:user_id]).userid
  end
   def useraddress
    @sessaddress=Join.find(session[:user_id]).address
  end
  def userbirth
    @sessbirth=Join.find(session[:user_id]).birth
  end
  def useremail
    @sessemail=Join.find(session[:user_id]).email
  end
  def reviewproduct
    @revName=Shop.find(session[:review]).product
  end
<<<<<<< HEAD
  def shoptype
    @shoptype=$shoptype
  end
=======

>>>>>>> 20ddea8bc575a4e8b2ed468e7bd826e3dd69a2dc
end
