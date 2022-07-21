class FlatsController < ApplicationController
  before_action :find_flat, only: [ :edit, :show, :destroy]
  def index
    @flats = Flat.all
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@restaurant)
    else
      render :new
    end
  end

  def new
    @flat = Flat.new
  end

  def edit

  end

  def show
  end

  def update

  end

  def destroy

  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :number_of_guests, :price_per_night)
  end

  def find_flat
    @flat = Flat.find(params[:id])
  end
end
