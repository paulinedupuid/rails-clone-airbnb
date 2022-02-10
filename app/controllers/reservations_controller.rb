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
    # gon.reservationprice = @reservation.price
    if @reservation.save
      redirect_to dashboard_flats_path, notice: 'Reservation created'
    else
      redirect_to flat_path(@flat), notice: 'There is an error in the form'
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
    @flat = Flat.find(@reservation.flat_id)
  end

  def accept_status
    @reservation = Reservation.find(params[:reservation_id])
    @reservation.status = "accepted"
    @reservation.save!
    redirect_to dashboard_flats_path, notice: "Reservation accepted"
  end

  def reject_status
    @reservation = Reservation.find(params[:reservation_id])
    @reservation.status = "rejected"
    @reservation.save!
    redirect_to dashboard_flats_path, notice: "Reservation rejected"
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to dashboard_flats_path, notice: 'Reservation destroyed successfully'
  end

  private

  def reservation_params
    params.require(:reservation).permit(:reservation_start, :reservation_end, :number_of_guests)
  end
end
