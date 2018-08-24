class Api::V1::SchedulesController < Api::BaseController

  require 'open-uri'

  def index
    schedules = []
    if ENV['ICAL_URL'].present?
      ics = open(ENV['ICAL_URL'])
      cals = Icalendar::Calendar.parse(ics)
      ics.close

      today = Date.today
      schedules = cals.first.events.sort {|a, b| a.dtstart <=> b.dtstart}.select {|d| d.dtstart >= today}.map do |event|
        {started_on: event.dtstart.strftime("%F"), schedule: event.summary}
      end
    end
    render json: schedules
  end
end
