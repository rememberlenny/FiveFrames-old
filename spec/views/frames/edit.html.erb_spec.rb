require 'rails_helper'

RSpec.describe "frames/edit", :type => :view do
  before(:each) do
    @frame = assign(:frame, Frame.create!(
      :character => ""
    ))
  end

  it "renders the edit frame form" do
    render

    assert_select "form[action=?][method=?]", frame_path(@frame), "post" do

      assert_select "input#frame_character[name=?]", "frame[character]"
    end
  end
end
