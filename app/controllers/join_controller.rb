class JoinController < ApplicationController
  def index
   @join = Join.new
  end
  def show
	@join = Join.find(params[:id])
  end
  def new
    @join = Join.new
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
	  params.require(:join).permit(:name, :userid, :birth, :pwd,:address)
   end
end


