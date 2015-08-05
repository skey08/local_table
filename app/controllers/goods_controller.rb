class GoodsController < ApplicationController

  def index
    @goods = Good.all
  end

  def new
    @carpenter = Carpenter.find(params[:carpenter_id])
    @good = Good.new
  end

  def create
    @carpenter = Carpenter.find(params[:carpenter_id])
    @good = @carpenter.goods.new(good_params)
      if @good.save
        redirect_to carpenter_goods_path(@carpenter)
      else
        render 'new'
      end
  end

  def show
    @carpenter = Carpenter.find(params[:carpenter_id])
    @good = Good.find(params[:id])
  end

  def edit
    @carpenter = Carpenter.find(params[:carpenter_id])
    @good = Good.find(params[:id])
  end


  def update
    @carpenter = Carpenter.find(params[:carpenter_id])
    @good = Good.find(params[:id])
      if @good.save
        redirect_to carpenter_goods_path(@carpenter, @good)
      else
        render 'edit'
      end
  end

  def destroy
    @good = Good.find(params[:id])
    @good.destroy
    redirect_to carpenter_goods_path
  end

  private
  def good_params
    params.require(:good).permit(:make, :price, :photo_url)
  end
end
