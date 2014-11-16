require 'rails_helper'

RSpec.describe "frames/new", :type => :view do
  before(:each) do
    assign(:frame, Frame.new(
      :character => ""
    ))
  end

  it "renders new frame form" do
    render

    assert_select "form[action=?][method=?]", frames_path, "post" do

      assert_select "input#frame_character[name=?]", "frame[character]"
    end
  end
end
