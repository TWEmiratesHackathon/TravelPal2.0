# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mission_story do
    mission_id 1
    user_id 1
    from_date "2013-09-21"
    to_date "2013-09-21"
    like_count 1
  end
end
