namespace :notification do
  desc "Sends SMS notification oto employees asking them to log overtime"
  task sms: :environment do
=begin
  	1. Schedule to run at sunday at 5pm
  	2. Iterate over all employees
  	3. Skip admin users
  	4. Send a message that has instructions and a link to log time
=end
		# User.all.each do |user|
		# 	SmsTool.send_sms(message: '', )
		# end
  end

end
 