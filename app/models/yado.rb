class Yado < ApplicationRecord
  extend FriendlyId
  friendly_id :name

  has_many :reservations, dependent: :destroy
  has_many :schedules, dependent: :destroy

  def to_show
    {}
  end
end
