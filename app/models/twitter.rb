class Twitter < ApplicationRecord
    belongs_to :user
    validates :twitter, length: {maximum: 280}, presence: true
    has_one_attached :image
    
  def following?(other)
    following.include?(other)
  end 

end
