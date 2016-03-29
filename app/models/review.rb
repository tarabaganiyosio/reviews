class Review < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 500 }
  validates :title, presence: true
  validates :story, presence: true, length: { maximum: 500 }
end
