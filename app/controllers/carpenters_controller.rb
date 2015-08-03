class CarpentersController < ApplicationController

  def index
    @carpenters = Carpenter.all
  end

  def new
    @carpenter = Carpenter.new
  end

  def create
    @user = User.find(session[:user]["id"])
    @carpenter = @user.carpenters.build(carpenter_params)
      if @carpenter.save
        redirect_to (carpenter_path(@carpenter))
      else
        render 'new'
      end
  end

  def show
    @carpenter = Carpenter.find(params[:id])
  end

  def edit
    @carpenter = Carpenter.find(params[:id])
  end


  def update
    @carpenter = Carpenter.find(params[:id])
    @carpenter.update(carpenter_params)
    redirect_to carpenter_path(@carpenter)
  end

  def destroy
    @carpenter = Carpenter.find(params[:id])
    @carpenter.destroy
    redirect_to carpenters_path
  end

  private
  def carpenter_params
    params.require(:carpenter).permit(:name, :company, :email, :phone_number, :zipcode)
  end
end
