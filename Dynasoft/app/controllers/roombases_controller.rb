class RoombasesController < ApplicationController
  before_action :set_roombase, only: [:show, :edit, :update, :destroy]
  before_action :admin_user,     only: [:show, :edit, :update, :destroy]

  # GET /roombases
  def index
    @roombases = Roombase.paginate(page: params[:page])
  end

  def new
    @roombase = Roombase.new
  end

  def show
    @roombase = Roombase.find(params[:id])
  end

  def create
    @roombase = Roombase.new(roombase_params)
    if @roombase.save
      flash[:info] = "Room Created"
      redirect_to roombases_path
    else
      render 'new'
    end
  end

  def edit
    @roombase = Roombase.find(params[:id])
  end

  # PATCH/PUT /rooms/1
  def update
    #if @room.update(room_params) && @room.update(editor: session[:cas_user])
    @roombase = Roombase.find(params[:id])
    if @roombase.update_attributes(roombase_params)
      flash[:success] = "Room updated"
    else
      flash[:danger] = "Room failed to update. Please try again"
    end
    redirect_to roombases_path
  end

  # DELETE /rooms/1
  def destroy
    Roombase.find(params[:id]).destroy
    flash[:success] = "Room deleted"
    redirect_to roombases_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roombase
      @room = Roombase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roombase_params
      params.require(:roombase).permit(:name, :location, :maxOccupancy, :activated)
    end

    def admin_user
      redirect_to(invalidUser_path) unless :is_admin?
    end
end
