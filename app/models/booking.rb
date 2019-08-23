class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :trip

  STATUSES = {
    "pending" => "En attente de confirmation",
    "accepted" => "Réservation confirmée",
    "declined" => "Demande refusée"
  }
end
