class Meme < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  validates :name, presence: true
  validates :description, presence: true
  
  has_many :captions
  
end
