class CarpentersController < ApplicationController
    before_action :set_carpenter, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:edit, :show]

  def index
    # if current_user
    #   @carpenters = current_user.carpenters
    # else
      @carpenters = Carpenter.all
    # end
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
  end

  def edit
  end


  def update
    if @carpenter.user.id == current_user.id
      @carpenter.update(carpenter_params)
    end
      redirect_to carpenter_path(@carpenter)
  end

  def destroy
    @carpenter.destroy
      redirect_to root_url
  end


  private
  def carpenter_params
    params.require(:carpenter).permit(:name, :company, :email, :phone_number, :zipcode)
  end
  def set_carpenter
    @carpenter = Carpenter.find(params[:id])
  end
end
