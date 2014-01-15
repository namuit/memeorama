class Caption < ActiveRecord::Base
  mount_uploader :picture, CaptionImageUploader
  belongs_to :meme
  
  def load_picture_from_meme!
    self.picture = meme.picture
    self.save!
  end
end
