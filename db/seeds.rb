<<<<<<< HEAD

create_users = for i in 1..10 do
  user = User.create(
    email: "demo_user_#{i}@test.com",
    password: "12345678",
    password_confirmation: "12345678"
    )
end

  admin_user = User.create(
    email: "jack@abc.com",
    password: "12345678",
    password_confirmation: "12345678",
    is_admin: true
    )
=======
u = User.new
u.email = "xx@xx.com"
u.password = "12345678"
u.password_confirmation = "12345678"
u.is_admin = true
u.save

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
>>>>>>> 961698b1369c8aae8de9fc786658e2e89ceca7de
