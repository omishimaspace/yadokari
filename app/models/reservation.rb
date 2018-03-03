class Reservation < ApplicationRecord

  belongs_to :yado
  attribute :token, :string, default: -> {SecureRandom.uuid}

  validates :name, :email, :tel, :check_in_on, :check_out_on, presence: true
end
