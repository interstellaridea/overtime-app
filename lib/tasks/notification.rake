namespace :notification do
  desc "Sends SMS notification oto employees asking them to log overtime"
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all
      notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: https://overtime-seb.herokuapp.com/"
      # 4. Send a message that has instructions and a link to log time

      employees.each do |employee|
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
    end
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
 