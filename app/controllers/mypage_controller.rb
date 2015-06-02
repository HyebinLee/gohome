class MypageController < ApplicationController

  def index
    @join=Join.all
    @buy = Buy.all
  end

  def show
#	@buy = Buy.find(params[:id])
  end
  def new
    @buy = Buy.new
  end
  def create
   end
    
  def edit
    @buy = Buy.find(params[:id])
  end
  def order
    @buy= Buy.all
  end

  def inform
    @join=Join.all
  end

  def board
    @review=Review.all
  end

  def static
  end
  private
   def buy_params
	  params.require(:buy).permit(:image, :product, :price, :num)
   end  
end
