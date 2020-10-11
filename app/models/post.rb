class Post < ApplicationRecord
  validates :title, length: { minimum: 4, maximum: 16, message: 'What in tarnations, not a valid length' }
  belongs_to :user
  has_many :comments
end
