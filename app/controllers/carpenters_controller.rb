class CarpentersController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  def index
    @carpenters = current_user.carpenters
  end

  def new
    @carpenter = Carpenter.new
  end

  def create
    @carpenter = current_user.carpenters.build(carpenter_params)
    if @carpenter.save
        redirect_to (carpenter_path(@carpenter))
      else
        render 'new'
      end
  end

  def show
    @carpenter = Carpenter.find(params[:id])
    @good = @carpenter.goods
  end

  def edit
    @carpenter = Carpenter.find(params[:id])
  end


  def update
    @carpenter = Carpenter.find(params[:id])
    # if session[:user]["id"] != @user.id
    #   message = "You Can't Edit Other Carpenters!"
    #   flash.now[:notice] = message
    #   render :show
    # else
    #   message = "Go ahead and edit your carpenter page."
    #   flash[:notice] = message
      @carpenter.update(carpenter_params)
      redirect_to carpenter_path(@carpenter)
  end

  def destroy
    @carpenter = Carpenter.find(params[:id])
    # if session[:user]["id"] != @user.id
    #   message = "You Can't Delete Other Carpenters!"
    #   flash.now[:notice] = message
    #   render :show
    # else
    #   message = "You've Successfully Deleted Your carpenter page."
      @carpenter.destroy
      redirect_to root_url
    #   flash[:notice] = message
  end


  private
  def carpenter_params
    params.require(:carpenter).permit(:name, :company, :email, :phone_number, :zipcode)
  end

end
