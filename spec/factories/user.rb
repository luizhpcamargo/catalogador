# This will guess the User class
FactoryGirl.define do
  factory :user do
    sequence :login do |n|
      "Person#{n}"
    end
    sequence :email do |n|
      "person#{n}@example.com"
    end
    password 'testtest'
    password_confirmation 'testtest'
  end
end
