class FramesController < ApplicationController

  def create
    @frame = Frame.create(frame_params)
  end

  private

  def set_frame
    @frame = Frame.find(params[:id])
  end

  def frame_params
    params.require(:frame).permit(:direct_upload_url)
  end
end
