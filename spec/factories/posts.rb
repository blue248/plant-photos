FactoryBot.define do
  factory :post do
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
    
    content {Faker::Lorem.sentence}
    association :user
  end
end