FactoryBot.define do 
    factory :user do 
        sequence(:id) {|n|}
        sequence(:email) {|n| "userx_#{n}@uninorte.edu.co"}
        sequence(:password)  {|n| "encrypted_password_#{n}"}
        sequence(:name) {|n| "userx_#{n}"}
        created_at {Time.now}
        updated_at {Time.now}
        confirmed_at {Time.now}
    end

end