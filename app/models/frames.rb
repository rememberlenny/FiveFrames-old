class Frames < ActiveRecord::Base
  has_attached_file :character,
                    styles: { :medium => "200x200>", :thumb => "100x100>" }
  validates_attachment_content_type :character, :content_type => /^image\/(png|gif|jpeg|jpg)/

end
