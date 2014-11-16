# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :frame, :class => 'Frames' do
    frame "MyString"
  end
end
