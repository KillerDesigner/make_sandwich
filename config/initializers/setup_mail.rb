ActionMailer::Base.smtp_settings = {
	:address => "smtp.gmail.com",
	:port => 587,
	:authentication => :plain,
	:domain => ENV['GMAIL_SMTP_USER'],
	:user_name => ENV['GMAIL_SMTP_USER'],
	:password => ENV['GMAIL_SMTP_PASSWORD'],
}

# Development Gmail settings, works when user name & pass are exported into bash
#
# ActionMailer::Base.smtp_settings = {
#  :address				=> "smtp.gmail.com",
#  :port					=> 587,
#  :domain				=> "www.gmail.com",
#  :user_name			=> ENV["GMAIL_NAME"],
#  :password				=> ENV["GMAIL_PASSWORD"],
#  :authentication		=> "plain",
#  :openssl_verify_mode  => "none",
#  :enable_starttls_auto	=> "true"
#}

#ActionMailer::Base.default_url_options[:host] = "localhost:3000"

