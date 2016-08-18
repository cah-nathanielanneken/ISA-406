class RoomactivitiesController < ApplicationController
  before_action :set_roomactivity, only: [:show, :edit, :update, :destroy]
  before_action :is_authorized

  # GET /roombases
  def index
    @roomactivities = Roomactivity.paginate(page: params[:page])
  end

  def new
    @roomactivity = Roomactivity.new
  end

  def show
    @roomactivity = Roomactivity.find(params[:id])
  end

  def create
    @roomactivity = Roomactivity.new(roomactivity_params)
    if @roomactivity.save
      flash[:success] = "Time rule Created"
      redirect_to roomactivities_path
    else
      render 'new'
    end
  end

  def edit
    @roomactivity = Roomactivity.find(params[:id])
  end

  # PATCH/PUT /rooms/1
  def update
    #if @room.update(room_params) && @room.update(editor: session[:cas_user])
    @roomactivity = Roomactivity.find(params[:id])
    if @roomactivity.update_attributes(roomactivity_params)
      flash[:success] = "Time rule updated"
    else
      flash[:danger] = "Time rule failed to update. Please try again"
    end
    redirect_to roomactivities_path
  end

  # DELETE /rooms/1
  def destroy
    Roomactivity.find(params[:id]).destroy
    flash[:success] = "Time rule deleted"
    redirect_to roomactivities_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roomactivity
      @roomactivity = Roomactivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roomactivity_params
      params.require(:roomactivity).permit(:begin, :end, :room)
    end

    def admin_user
      redirect_to(invalidUser_path) unless :is_admin?
    end
end
