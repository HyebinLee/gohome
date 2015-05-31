class ReviewController < ApplicationController
  def index
    @review = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end
  def new
    @review = Review.new
  end
  def edit
    @review=Review.find(params[:id])
  end
  def create
    @review=Review.new(review_params)
    @review.date = Time.now.strftime("%Y-%m-%d")
    @review.product = reviewproduct 
    if @review.save
      redirect_to @review
    else
      render 'new'
    end
  end

  def update
    @review=Review.find(params[:id])
    if @review.update(review_params)
      redirect_to @review
    else
      render 'edit'
    end
  end
  
  def destroy
    @review=Review.find(params[:id])
    @review.destroy
  
    redirect_to review_index_path
  end
  private
    def review_params
      params.require(:review).permit(:num, :product, :subject, :text, :name, :date, :star)
    end

end
