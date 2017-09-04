class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
  mount_uploader :image, ImageUploader
   extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
  def author
    "#{self.Firstname} #{self.Lastname}"
  end
end