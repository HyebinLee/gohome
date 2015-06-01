class ShopController < ApplicationController
  $var=0
  def index
    @shop = Shop.all
  end

  def show
    @shop = Shop.find(params[:id])
    session[:item]=@shop.id
    session[:review]=@shop.id
    @review=Review.all
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
  def inside
    $var=3
    @cart=Cart.new
    @cart.image=itemimage
    @cart.product=itemproduct
    @cart.price=itemprice
    @cart.user=username
    @cart.num=$var
    @cart.save
    render :update do |page|
      page.replace_html 'cart', :partial => cart_index_path
    end
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
