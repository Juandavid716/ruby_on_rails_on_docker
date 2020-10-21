class Twitter < ApplicationRecord
    belongs_to :user
    validates :twitter, length: {maximum: 280}

  def following?(other)
    following.include?(other)
  end 

end
