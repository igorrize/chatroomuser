class RoomsController < ApplicationController
  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
    @room = Room.includes(:messages).find_by(id: params[:id])
    @message = Message.new
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = current_user.rooms.build(room_params)
    if @room.save
      flash[:success] = 'room was created'
      redirect_to rooms_path
    else
      render 'new'
    end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json

  private

# Never trust parameters from the scary internet, only allow the white list through.
def room_params
  params.require(:room).permit(:rname)
end
