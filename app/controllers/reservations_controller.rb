class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
    @user = current_user
    @flat = Flat.find(params[:flat_id])
  end

  def create
    @flat = Flat.find(params[:flat_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.flat = @flat
    if @reservation.save
      redirect_to reservation_path(@reservation), notice: 'Reservation created'
    else
      render 'reservations/new'
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @flat = Flat.find(@reservation.flat_id)
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to flats_path, notice: 'Reservation destroyed successfully'
  end

  private

  def reservation_params
    params.require(:reservation).permit(:reservation_start, :reservation_end)
  end
end
