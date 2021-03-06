class FlatsController < ApplicationController


  before_action :find_flat, only: [:show, :edit, :update, :destroy]

  #before_action :authenticate_user!, only: [:create, :update, :new, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @flats = Flat.all
  end

  def show

  end

  def new
    @flat = Flat.new
  end

  def create
    #binding.pry
    @flat = Flat.new(flat_params)
    #@flat.user = we should update it later on
    @flat.city = @flat.city.downcase
    @flat.user = current_user
    #binding.pry
    if @flat.save
      redirect_to flats_path
    else
      render :edit
    end
  end

  def flat_params
    return params.require(:flat).permit(:name, :city, :capacity)
  end


  def edit

  end


  def update
    #binding.pry
    #@flat = Flat.find(params[:id])
    @flat.update(flat_params)
    @flat.city = @flat.city.downcase
    #binding.pry
    if @flat.save
      redirect_to flats_path
    else
      render :edit
    end
  end

  def destroy
    #binding.pry
    #@flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
    #binding.pry
    # if @flat.save
    #   redirect_to flats_path
    # else
    #   render :edit
    # end
  end

  def find_flat
    #@flat = Flat.find(params[:id])
    @flat = Flat.find_by_slug(params[:id])
  end

end
