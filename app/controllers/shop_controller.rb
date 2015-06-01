class ShopController < ApplicationController
  def index
    @shop = Shop.all
  end

  def show
    @count=0
    @shop = Shop.find(params[:id])
    session[:item]=@shop.id
    session[:review]=@shop.id
    @review = Review.all
    if @count==1
      @cart=Cart.new
      @cart.image=itemimage
      @cart.product=itemproduct
      @cart.price=itemprice
      @cart.user=username
      @cart.num=1
      @cart.save  
    end
  end
  def edit
    @shop=Shop.find(params[:id])
  end
  def new
    @shop = Shop.new
  end
   def create
    @shop=Shop.new(shop_params)
#    @shop.type=shoptype
    if @shop.save
        redirect_to @shop
    else
        render 'new'
    end
  end

  def update
    @shop=Shop.find(params[:id])
    if @shop.update(shop_params)
      redirect_to @shop
    else
      render 'edit'
    end
  end

  def destroy
    @shop=Shop.find(params[:id])
    @shop.destroy

    redirect_to shop_index_path
  end

  def message
  end
 
  def pay
    @join=Join.all
  end
  private
    def shop_params
      params.require(:shop).permit(:image, :type, :product, :price, :text)
    end

private
   def cart_params
	  params.require(:cart).permit(:image, :product, :price, :num, :user)
   end
end
