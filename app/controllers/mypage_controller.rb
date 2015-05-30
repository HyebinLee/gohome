class MypageController < ApplicationController

  def index
    @join=Join.all
  end
  
end
