class Api::V1::SchedulesController < Api::BaseController

  def index
    schedules = Schedule.future.order(:started_on)
    render json: schedules.map{|s|s.to_cal}
  end
end
