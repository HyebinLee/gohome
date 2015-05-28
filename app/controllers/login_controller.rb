class LoginController < ApplicationController
  def index
    @join=Join.all
  end
  def show
    @join = Join.find(params[:id])
  end

  def new
  end

  def create
    #join = Join.find_by(userid:params[:userid]).authenticate(params[:pwd])
    join=Join.find_by(userid:params[:userid], pwd:params[:pwd])
    if join.nil?
      flash.now.alert="Invalid email or password"
      render 'new'
    else
      session[:user_id]=join.id
      redirect_to root_path, :notice => "login"
      #join=Join.authenticate(params[:userid], params[:pwd])
    end
  end
  
  #def login
  #  join=Join.authenticate(params[:userid], params[:pwd])
  #  if join
  #    session[:user_id]=join.id
  #    redirect_to root_path, :notice => "login"
  #  else
  #    flash.now.alert="Invalid email or password"
  #    render 'index'
  #  end
  #end

  def account
    if session[:user_id] !=nil
      @sessName=Join.find(session[:user_id].id)
    else
      @sessName="Guest"
    end
  end
  #def Join.authenticate(userid,pwd)
  #  join = find_by_userid(userid)
  #  if join.nil?
  #    render 'new'
  #    session[:user_id]=join.id
  #    redirect_to root_path, :notice => "login" 
  #  else  
  #    render 'new'
  #  end  
  #end

end
