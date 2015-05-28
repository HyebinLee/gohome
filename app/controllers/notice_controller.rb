class NoticeController < ApplicationController
  $count=0
  def index
    @notice = Notice.all
  end

  def show
    @notice = Notice.find(params[:id])
  end
  def new
    @notice = Notice.new
  end
  def edit
    @notice=Notice.find(params[:id])
  end
  def create
    @notice=Notice.new(notice_params)
    @notice.name = '관리자'
    @notice.date = Time.now.strftime("%Y-%m-%d")
    $count=$count+1
    @notice.num = $count
    if @notice.save
      redirect_to @notice
    else
      render 'new'
    end
  end
  def update
    @notice=Notice.find(params[:id])
    if @notice.update(notice_params)
      redirect_to @notice
    else
      render 'edit'
    end
  end
  
  def destroy
    @notice=Notice.find(params[:id])
    @notice.destroy
  
    redirect_to notice_index_path
  end

  private
    def notice_params
      params.require(:notice).permit(:num, :subject, :text,:name, :date)
    end
end


