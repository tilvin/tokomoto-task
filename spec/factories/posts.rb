FactoryGirl.define do
  factory :post do
    user { User.first }
    title 'title_post'
    text 'text_post'
  end
end