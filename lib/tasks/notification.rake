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

  desc "Sends mail notifications to manager (admin users) each day to inform the pending overtime requests"
  task manager_email: :environment do
    # 1. Iterate over list of pending overtime requests
    # 2. Check to see if there are any requests
    # 3. Iterate over list of admin users/ managers
    # 4. Send email to each admin.
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
  end
end
 