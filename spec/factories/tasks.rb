# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    name "MyString"
    description "MyText"
    information "MyText"
    score 1
    hint "MyText"
    count 1
    rank 1.5
    answer 1
    mission_id 1
  end
end
