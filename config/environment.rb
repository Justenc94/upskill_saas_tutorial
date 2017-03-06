# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => ENV['209.61.151.224'],
  :address        => ENV['smtp.mailgun.org'],
  :user_name      => ENV['postmaster@sandbox28d843d9d6a8496ab32b9c41028cf876.mailgun.org'],
  :password       => ENV['0edcc19edc9ab47ac2612da6cd0283b5'],
  :domain         => 'obscure-peak-46358.herokuapp.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp
