class GoodsController < ApplicationController

  def index
    @goods = Good.all
  end

  def new
    @carpenter = Carpenter.find(session[:user]["id"])
    @good = Good.new
  end

  def create
    @carpenter = Carpenter.find(session[:user]["id"])
    @good = @carpenter.goods.build(params[:good])
      if @good.save
        redirect_to carpenter_good_path(@good)
      else
        render 'new'
      end
  end

  def show
    @good = Good.find(params[:id])
  end

  def edit
    @good = Good.find(params[:id])
  end


  def update
    @good = Good.find(params[:id])
    @good.update(good_params)
    redirect_to carpenter_good_path(@good)
  end

  def destroy
    @good = Good.find(params[:id])
    @good.destroy
    redirect_to carpenter_goods_path
  end

  private
  def good_params
    params.require(:good).permit(:type, :price, :photo_url)
  end
end
