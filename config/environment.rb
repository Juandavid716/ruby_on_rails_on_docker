# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.action_mailer.default_url_options = {:host => 'books-app-api.herokuapp.com', :protocol => 'http'} #I've also tried it without ":protocol => 'http'"
ActionMailer::Base.action_mailer.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.smtp_settings = {
    address:'smtp.gmail.com',
    port:'465',
    domain:'gmail.com',
    user_name: ENV["MAIL_USERNAME"],
    password:  ENV["MAIL_PASSWORD"],
    authentication: 'plain',
    :ssl => true,
    :tsl => true,
    enable_starttls_auto: true
}