class Reservation < ApplicationRecord
  include AASM

  belongs_to :yado
  attribute :token, :string, default: -> { SecureRandom.uuid }
  attribute :men_number, :integer, default: 0
  attribute :women_number, :integer, default: 0
  attribute :check_in_time, :datetime, default: '15:00'
  validates :name, :email, :tel, :check_in_on, :check_out_on, presence: true
  validates :men_number, :women_number, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
  validate :check_in_validation
  validate :member_validation

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

  def total_member
    men_number + women_number
  end

  def check_in_validation
    if check_in_on.present? && check_out_on.present?
      if (check_in_on >= check_out_on)
        errors.add(:check_out_on, 'チェックアウトはチェックインの翌日以降を指定してください')
      end
    end
  end

  def member_validation
    if 2 > total_member
      errors.add(:men_number, '宿泊は最低2名様からとなります')
    elsif total_member > 10
      errors.add(:men_number, '宿泊は最大10名様までです')
    end
  end

  def yado_name
    yado.try(:name)
  end

  def approvable?

  end

  def check_schedule
    Schedule.where('started_on >= ? and finished_on <= ?', self.check_in_on, self.check_out_on)
  end
end
