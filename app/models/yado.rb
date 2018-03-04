class Yado < ApplicationRecord

  has_many :reservations, dependent: :destroy

  def to_show
    {}
  end
end
