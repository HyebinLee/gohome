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

  def self.authenticate(userid="",pwd="")
	join = Join.find_by_userid(userid)
	if join && join.match_pwd(pwd)
		redirect_to @join
	else
		return false
	end
  end
	
end
