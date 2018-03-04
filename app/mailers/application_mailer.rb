class ApplicationMailer < ActionMailer::Base
  default from: ENV["FROM_ADDRESS"] || 'from@example.com'
  layout 'mailer'
end
