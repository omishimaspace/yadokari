class Schedule < ApplicationRecord

  enum schedule_type: {reserved: 'reserved', holiday: 'holiday', not_accepted: 'not_accepted', accepted: 'accepted'}
  validates :schedule_type, presence: true
  validates :schedule_type, inclusion: {in: Schedule.schedule_types.keys}

  def to_cal
    {started_at: self.started_at, finished_at: self.finished_at, schedule: self.schedule_type_i18n}
  end
end
