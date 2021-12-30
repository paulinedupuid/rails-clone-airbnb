class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flat_path(@flat), notice: 'Flat created'
    else
      render 'flats/new'
    end
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, notice: 'Flat destroyed successfully'
  end

  def dashboard
    @flats = Flat.where(user_id: current_user)
    @reservations = Reservation.where(user_id: current_user)
  end

  private

  def flat_params
    params.require(:flat).permit(:title, :description, :address, :availability_start, :availability_end, :price_per_day, :number_of_guests, photos: [])
  end

end
