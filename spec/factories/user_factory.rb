FactoryGirl.define do
  factory :user do
    email "foo@thoughtworks.com"
    password "password"
    confirmed_at Time.now
  end
end