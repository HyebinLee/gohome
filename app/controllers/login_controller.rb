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
    join=Join.find_by(userid:params[:userid], pwd:params[:pwd])
    if join.nil?
      flash.now.alert="Invalid email or password"
      render 'new'
    else
      session[:user_id]=join.id
      redirect_to root_path, :notice => "login"
    end
  end
<<<<<<< HEAD
 
  def find
  end
=======
  def find
  end 
>>>>>>> 20ddea8bc575a4e8b2ed468e7bd826e3dd69a2dc
  def send_mail
    address=params[:email]
    user=Join.find_by(email:params[:email])
    require 'gmail'
    gmail = Gmail.connect('tmanel1248@gmail.com','fiona3009')
    puts gmail.logged_in?
    gmail.deliver do
	to address
<<<<<<< HEAD
	subject "gohome 계정찾기 메일 입니다."
	text_part do
          if user.nil?
            body "해당 이메일과 일치하는 아이디와 비밀번호를 찾을 수 없습니다."
=======
	subject "gohome 이메일 계정입니다."
	text_part do
          if user.nil?
            body "해당 이메일과 일치하는 아이디와 비밀번호가 존재하지 않습니다."
>>>>>>> 20ddea8bc575a4e8b2ed468e7bd826e3dd69a2dc
          else
	    body user.name+"님의 아이디는 "+user.userid+"비밀번호는 "+user.pwd+"입니다."
          end
	end
    end
    gmail.logout
  end
<<<<<<< HEAD
=======
 
>>>>>>> 20ddea8bc575a4e8b2ed468e7bd826e3dd69a2dc

end
