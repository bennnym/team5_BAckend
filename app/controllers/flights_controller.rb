class FlightsController < ApplicationController
  before_action :set_flight, only: [:show, :edit, :update, :destroy]
  before_action :check_for_login, only: [:new, :edit]
  before_action :check_for_admin, only: [:new, :edit, :create ]

  # GET /flights
  # GET /flights.json
  def index
    @flights = Flight.all
    @user = session[:user_id]
    @username = session[:username]


  end

  # GET /flights/1
  # GET /flights/1.json
  def show
    @seats = @flight.reservations #shows all the seats available
    @users = User.all
  end

  # GET /flights/new
  def new
    @flight = Flight.new
  end

  # GET /flights/1/edit
  def edit
  end

  # POST /flights
  # POST /flights.json
  def create
    @flight = Flight.new(flight_params)

    respond_to do |format|
      if @flight.save
        format.html { redirect_to @flight, notice: 'Flight was successfully created.' }
        seats = Flight.last.airplane.rows.to_i * Flight.last.airplane.cols.to_i #this works out how many seats are going to be on this flight

        (1..seats).map do |n|
          reservation = Reservation.new 
          reservation.flight_id = Flight.last.id
          reservation.username = "empty"
          reservation.save
      end

        format.json { render :show, status: :created, location: @flight }
      else
        format.html { render :new }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flights/1
  # PATCH/PUT /flights/1.json
  def update
    respond_to do |format|
      if @flight.update(flight_params)
        format.html { redirect_to @flight, notice: 'Flight was successfully updated.' }
        format.json { render :show, status: :ok, location: @flight }
      else
        format.html { render :edit }
        format.json { render json: @flight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flights/1
  # DELETE /flights/1.json
  def destroy
    @flight.destroy
    respond_to do |format|
      format.html { redirect_to flights_url, notice: 'Flight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight
      @flight = Flight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flight_params
      params.require(:flight).permit(:date, :to, :from, :airplane_id)
    end
end
