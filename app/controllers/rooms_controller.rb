class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @rooms = current_user.rooms
  end

  def show
  end

  def new
    @room = current_user.rooms.build
  end

  def create
    @room = current_user.rooms.build(room_params)

    if @room.save
      redirect_to @room, notice: "Saved"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @room.update(room_params)
      redirect_to @room, noice: "Updated!"
    else
      render :edit
    end
  end

  private
    def set_room
      @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:home_type, :room_type, :accomodate, :bed_room, :bath_room, :lisiting_name, :summary, :address, :is_tv, :is_kitchen, :is_wifi, :is_aircon, :is_heating, :price, :active)
  end
end
