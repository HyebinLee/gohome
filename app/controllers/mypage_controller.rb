class MypageController < ApplicationController

  def index
    @join=Join.all
<<<<<<< HEAD
    @buy = Buy.all
  end

=======
    @buy=Buy.all
  end
>>>>>>> 20ddea8bc575a4e8b2ed468e7bd826e3dd69a2dc
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
    @join=Join.all
  end
  def parcel
    @time=(Time.now.to_i-delivery.to_i)/60
  end
  private
   def buy_params
	  params.require(:buy).permit(:image, :product, :price, :num)
   end  
<<<<<<< HEAD
=======

>>>>>>> 20ddea8bc575a4e8b2ed468e7bd826e3dd69a2dc
end
