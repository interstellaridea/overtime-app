ActionMailer::Base.smtp_settings = {
	:port => ENV['SPARKPOST_SMTP_PORT'],
	:adderss => ENV['SPARKPOST_SMTP_HOST'],
	:user_name => ENV['SPARKPOST_SMTP_USERNAME'],
	:password => ENV['SPARKPOST_SMTP_PASSWORD'],
	:authentication => :login,
	:enable_startttls_auto => true
}