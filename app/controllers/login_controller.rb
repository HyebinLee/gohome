class LoginController < ApplicationController
  $address
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
 
  def find
   # flash[:alert]="in the cart"
  #  flash[:alert]="in the cart"
  #  render :update do |page|
  #    page.replace_html 'find', :partial => send_mail_path, :object => address
  #  end
  end 
  def send_mail
    address=params[:email]
    user=Join.find_by(email:params[:email])
    require 'gmail'
    gmail = Gmail.connect('tmanel1248@gmail.com','fiona3009')
    puts gmail.logged_in?
    gmail.deliver do
	to address
	subject "gohome 계정찾기 메일 입니다."
	text_part do
          if user.nil?
            body "해당 이메일과 일치하는 아이디와 비밀번호를 찾을 수 없습니다."
          else
	    body user.name+"님의 아이디는 "+user.userid+"비밀번호는 "+user.pwd+"입니다."
          end
	end
    end
    gmail.logout
  end

end
