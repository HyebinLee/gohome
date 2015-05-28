class ShopController < ApplicationController
  def index
    @shop = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
  end
  def new
    @shop = Shop.new
  end
   def create
    @shop=Shop.new(shop_params)
    if @shop.save
      redirect_to @shop
    else
      render 'new'
    end
  end

  private
    def shop_params
      params.require(:shop).permit(:fimage, :product, :price, :text)
    end

end
