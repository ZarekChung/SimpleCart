namespace :dev do

  task fake_user: :environment do
    20.times do |i|
     name = FFaker::Name::first_name_female
     file = File.open("#{Rails.root}/public/avatar/user#{i+1}.jpg")
     user = User.new(
       name: name,
       email: "user#{i}@example.co",
       password: "1qaz2wsx",
       avatar: file,
       phone: FFaker::PhoneNumber,
       address: FFaker::Address
     )
     user.save!
   end
   puts User.count
 end

 task fake_porduct: :environment do
   50.times do |i|
    name = FFaker::Name::first_name_female
    product = Product.new(
      name: FFaker::Product::product_name,
      price: rand(150..2000),
      description: FFaker::Lorem::sentence(30),
      image: FFaker::Avatar.image
    )
    product.save!
  end
  puts Product.count
end

end
