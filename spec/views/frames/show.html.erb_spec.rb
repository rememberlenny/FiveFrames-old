require 'rails_helper'

RSpec.describe "frames/show", :type => :view do
  before(:each) do
    @frame = assign(:frame, Frame.create!(
      :character => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
