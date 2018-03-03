class Api::BaseController < ::ActionController::Base
  protect_from_forgery with: :exception
end
