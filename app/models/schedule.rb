class Schedule < ApplicationRecord

  enum schedule_type: {reserved: 'reserved', holiday: 'holiday', not_accepted: 'not_accepted', accepted: 'accepted'}
  validates :started_on, :finished_on, :schedule_type, presence: true
  validates :schedule_type, inclusion: {in: Schedule.schedule_types.keys}

  scope :future, -> {where('finished_on >= ?', Date.current)}



  def self.exists?(check_in_on, check_out_on)
    where('started_on >= ? and finished_on <= ?', check_in_on, check_out_on).exists?
  end

  def to_cal
    {started_on: self.started_on, finished_on: self.finished_on, schedule: self.schedule_type_i18n}
  end
end
