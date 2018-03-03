class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :basic_auth unless Rails.env.development?


  def basic_auth
    authenticate_or_request_with_http_basic do |user,pass|
      user == ENV['BASIC_AUTH_USER'] && ENV['BASIC_AUTH_PASSWORD']
    end
  end
end
