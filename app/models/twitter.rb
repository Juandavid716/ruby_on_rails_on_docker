class Twitter < ApplicationRecord
    belongs_to :user
    validates :twitter, length: {maximum: 280}, presence: true
    
  def following?(other)
    following.include?(other)
  end 

end
