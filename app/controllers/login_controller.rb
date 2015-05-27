class LoginController < ApplicationController
  def index
	@join = Join.all
  end
  def show
	@join = Join.find(params[:id])
  end
  def create
	render 'new'
  end
end
