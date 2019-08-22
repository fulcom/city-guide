class Trip < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader

  # ajouter le geocoding par city
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
