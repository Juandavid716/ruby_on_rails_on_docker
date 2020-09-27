class Twitter < ApplicationRecord
    belongs_to :user
    validates :twitter, length: {maximum: 280}
end
