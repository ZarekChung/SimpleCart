#Default admin
User.destroy_all
User.create(email: "admin@example.com", password:"12345678", role: "admin", name: "admin")
puts "Default admin created!"
