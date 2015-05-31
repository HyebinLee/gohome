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
    if @join.address==''
      @admin=Join.find_by_userid(@join.userid)
      if !@admin
        render 'check'
       else
        render 'check'
      end
    else
      if @join.save
			flash[:alert]="가입 성공~"
			redirect_to @join
      else
        render 'index'
      end
   end
    #if @join.save
      #redirect_to @join
    #else
      #render 'check'
    #end
    #render 'show'
    
  end
  def edit
    @join = Join.find(params[:id])
  end

  def check
    @admin = Join.find_by_userid(@join.userid)
    render :update do |page|
      page.replace_html 'check', :partial => join_check_path, :object => @admin
    end
  end

  private
   def join_params
	  params.require(:join).permit(:name, :userid, :birth, :pwd,:address)
   end
end


