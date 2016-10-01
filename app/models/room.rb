class Room < ApplicationRecord
  belongs_to :user
  validates :accommodates, numericality: { greater_than: 0 }
  mount_uploaders :images,RoomPhotoUploader
  serialize :images, Array

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
    where("description LIKE ?", "%#{search}%")
  end

end
