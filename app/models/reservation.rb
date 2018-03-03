class Reservation < ApplicationRecord

  belongs_to :yado
  attribute :token, :string, default: -> {SecureRandom.uuid}
  attribute :men_number, :integer, default: 0
  attribute :women_number, :integer, default: 0

  validates :name, :email, :tel, :check_in_on, :check_out_on, presence: true
  validates :men_number, :women_number, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_nil: true
end
