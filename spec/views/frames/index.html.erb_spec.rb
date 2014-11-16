require 'rails_helper'

RSpec.describe "frames/index", :type => :view do
  before(:each) do
    assign(:frames, [
      Frame.create!(
        :character => ""
      ),
      Frame.create!(
        :character => ""
      )
    ])
  end

  it "renders a list of frames" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
