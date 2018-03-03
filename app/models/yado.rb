class Yado < ApplicationRecord

  has_many :reservations, dependent: :destroy
end
