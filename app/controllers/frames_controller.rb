class FramesController < ApplicationController
  # Other CRUD actions omitted

  def create
    @frame = Frame.new(frame_params)

    if @frame.save
      redirect_to @frame, notice: 'Friend was successfully created.'
     else
       render action: 'new'
    end
  end

  private

  def frame_params
    params.require(:frame).permit(:character)
  end
end
