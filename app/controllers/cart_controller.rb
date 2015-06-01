class CartController < ApplicationController
  def index
    @cart=Cart.all
  end

  def show
	@cart = Cart.find(params[:id])
  end
  def new
    @cart = Cart.new
  end
  def create
   end
    
  def edit
    @cart = Cart.find(params[:id])
  end
  def destroy
    @cart=Cart.find(params[:id])
    @cart.destroy
    redirect_to cart_index_path
  end
  private
   def cart_params
	  params.require(:cart).permit(:image, :product, :price, :num, :user)
   end
end
