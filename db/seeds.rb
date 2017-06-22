@user = User.create(email: "test@test.com",
										password: "asdfasdf",
										password_confirmation: "asdfasdf",
										first_name: "Jon",
										last_name: "Snow",
										phone: "4322386131")

puts "1 User created"

AdminUser.create(email: "admin@test.com",
									password: "asdfasdf",
									password_confirmation: "asdfasdf",
									first_name: "Admin",
									last_name: "Name",
									phone: "4322386131")

puts "1 Admin User created"

100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} 
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempora, voluptas, deleniti. Neque officiis fuga repudiandae, repellat inventore ipsam, temporibus similique.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"


AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))


puts "3 audit logs have been created"