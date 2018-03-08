class Reservation < ApplicationRecord
  include AASM

  belongs_to :yado
  attribute :token, :string, default: -> {SecureRandom.uuid}
  attribute :men_number, :integer, default: 0
  attribute :women_number, :integer, default: 0
  validates :name, :email, :tel, :check_in_on, :check_out_on, presence: true
  validates :men_number, :women_number, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_nil: true

  aasm(:status) do
    state :pending, initial: true
    state :reserved
    state :rejected
    state :canceled

    event :approve, before_transaction: :check_schedule do
      transitions from: :pending, to: :reserved, :guard => :approvable?
    end

    event :reject do
      transitions to: :rejection
    end

    event :cancel do
      transitions to: :canceled
    end
  end

  def approvable?

  end

  def check_schedule
    Schedule.where('started_on >= ? and finished_on <= ?', self.check_in_on, self.check_out_on)
  end
end
