class FramesController < ApplicationController

  def create
    @frame = Frames.create( frames_params )
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def frames_params
    params.require(:frame).permit(:character)
  end

end
