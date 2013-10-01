# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mission do
    name "MyString"
    description "MyText"
    task_count 1
    count 1
    rank 1
  end
end
