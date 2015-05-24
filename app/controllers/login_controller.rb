class LoginController < ApplicationController
  def index
	@login = Login.all
  end
  def show
	@login = Login.find(params[:id])
  end
  
  def create
	@login = Login.new(article_params)

	if @login.save
	  redirect_to @login
	else
	  render 'new'
	end
  end

  def new
  end
end
