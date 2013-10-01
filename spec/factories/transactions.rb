# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    user_id 1
    task_id 1
    rank 1
    accomplish_date "2013-09-21"
    weather 1
  end
end
