class Api::V1::SchedulesController < Api::BaseController

  def index
    schedules = Schedule.all
    render json: schedules.map{|s|s.to_cal}
  end
end
