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
    @shop.count=0
  end
   def create
    @shop=Shop.new(shop_params)
    @shop.count=0
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
    @cart=Cart.all
    #params[:sum]=Cart.sum("price")
    #Cart.all.each do |cart|
    #  params[:sum]=params[:sum]+cart.price
    #end
    @join=Join.all
    @buy=Buy.new
    @buy.image=itemimage
    @buy.product=itemproduct
    @buy.price=itemprice
    @buy.num=1
    @buy.save
  end
  def inside
    $var=1
    @cart=Cart.new
    @cart.image=itemimage
    @cart.product=itemproduct
    @cart.price=itemprice
    @cart.user=username
    @cart.num=$var
    @cart.save
  # render :update do |page|
  #    page.replace_html 'cart', :partial => cart_index_path
 #   end
     render 'cart_index_path'
  end
  def buy
    Cart.all.each do |cart|
      @shop=Shop.find_by! product: cart.product
      @shop.count+=1
      @shop.save
    end
    Cart.delete_all(user:  username)
    @count=Count.new
    @count.time=Time.now.to_i
    @count.save
    session[:time]=@count.id
  end
  def search
    @shop=Shop.where("product LIKE?", "%#{params[:search]}%")
  #  @shop=Shop.find_by! product:params[:search]
  end
  def cup
    @shop = Shop.all
  end
  def dish
    @shop = Shop.all
  end
  def room_deco
	@shop = Shop.all
  end
  def cleans
   @shop = Shop.all
  end 
  def bathroom
    @shop = Shop.all
	end
  def etc
    @shop = Shop.all
  end

  def shop2
    @shop=Shop.order(count: :desc)
  end

  def shop3
    @shop=Shop.order(price: :desc)
  end

  def shop4
    @shop=Shop.order(price: :asc)
  end

  private
    def shop_params
      params.require(:shop).permit(:image, :type, :product, :price, :text, :count, :value)
    end

private
   def cart_params
	  params.require(:cart).permit(:image, :product, :price, :num, :user)
   end
end
