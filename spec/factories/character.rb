# This will guess the User class
FactoryGirl.define do
  factory :character do
    sequence :birth do |n|
      rand(n * 10).years.ago
    end

    sequence :name do |n|
      "Normal Person #{n}"
    end

    sequence :codename do |n|
      "Actor #{n}"
    end

    role :actor
  end
end
