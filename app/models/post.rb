class Post < ApplicationRecord

  belongs_to :user

  validates :title, :text, :user_id, presence: true

  mount_uploader :image, PostImageUploader

end
