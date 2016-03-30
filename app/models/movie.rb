class Movie < ActiveRecord::Base
    belongs_to :user
    validates :user_id, presence:true
    validates :title, presence: true
    validates :story, presence: true, length: { maximum: 500 }
end
