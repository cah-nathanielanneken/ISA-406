class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  #before_action :admin_user,     only: [:destroy]

  # GET /rooms
  def index
    @rooms = find_latest_rooms
    # if @rooms.blank?
    #   Room.generateNewRoomOnTheHour
    #   size = (Roombase.all).size
    #   while @rooms.size != size
    #     @rooms = find_latest_rooms
    #   end
    # end
  end

  # PATCH/PUT /rooms/1
  def update
    #if @room.update(room_params) && @room.update(editor: session[:cas_user])
    if @room.update(room_params)
      flash[:success] = "Room updated"
    else
      flash[:failure] = "Room failed to update. Please try again"
    end
    redirect_to :back
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    flash[:success] = "Room deleted"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:name, :occupancy, :location, :maxOccupancy)
    end

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
