class Frame < ActiveRecord::Base

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :character, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :character, :content_type => /\Aimage\/.*\Z/

end
