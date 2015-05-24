class JoinController < ApplicationController
  def show
	@join = Join.find(params[:id])
  end
  def new
  end
  def create
    @join=Join.new(join_params)

	 if @join.save
	   redirect_to @join
	 else
	   render 'new'
	 end
  end

  private
   def join_params
	  params.require(:join).permit(:name, :uid, :year,:month,:day, :pwd,:re_pwd,:address)
	end
end
