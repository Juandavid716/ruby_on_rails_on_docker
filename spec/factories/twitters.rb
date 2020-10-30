FactoryBot.define do 
    factory :twitter do 
        sequence(:id) {|n|}
        sequence(:twitter) {|n| "Twitter_num_#{n}"}
        created_at {Time.now}
        updated_at {Time.now}
    end
end