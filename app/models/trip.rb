class Trip < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
  include PgSearch
  multisearchable against: [:name, :city, :description]
end
