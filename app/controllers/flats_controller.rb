class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @flats = Flat.where("address ILIKE ?", "%#{params[:query]}%")
      @markers = @flats.geocoded.map do |flat|
        {
          lat: flat.latitude,
          lng: flat.longitude,
          info_window: render_to_string(partial: "info_window", locals: { flat: flat }),
          image_url: helpers.asset_url('flat.svg')
        }
      end
    else
      @flats = Flat.all
      @markers = @flats.geocoded.map do |flat|
        {
          lat: flat.latitude,
          lng: flat.longitude,
          info_window: render_to_string(partial: "info_window", locals: { flat: flat }),
          image_url: helpers.asset_url('flat.svg')
        }
      end
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @reservation = Reservation.new
    @coordinates = @flat.geocode
    @marker = [{
      lat: @coordinates[0],
      lng: @coordinates[1],
      info_window: render_to_string(partial: "info_window", locals: { flat: @flat }),
      image_url: helpers.asset_url('flat.svg')
    }]
    @flat_availability = Range.new(@flat.availability_start, @flat.availability_end).to_a
    @flat_reservation = []
    @flat.reservations.each do |reservation|
      unless reservation.status == "rejected"
        @flat_reservation << Range.new(reservation.reservation_start, reservation.reservation_end).to_a
      end
    end
    @flat_reservation.flatten!
    @flat_reservation.sort!
    @flat_availability -= @flat_reservation
    gon.flatavailability = @flat_availability
    gon.flatreservation = @flat_reservation

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
