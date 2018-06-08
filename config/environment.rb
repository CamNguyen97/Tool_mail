# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
SendgridRailsSampleApp::Application.initialize!

# overwrite ActionMailer settings to send through SendGrid servers
ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV["username_email"],
  :password       => ENV["password_email"],
  :domain         => 'example.com',
  :enable_starttls_auto => true
}
