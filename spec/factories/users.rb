FactoryGirl.define do
  factory :user do
    email 'user@owner.ru'
    password 'ownerowner'
    password_confirmation 'ownerowner'
    owner true
  end
end