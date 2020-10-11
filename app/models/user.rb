class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 4, maximum: 16 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 4, maximum: 16 }
  has_many :posts
  has_many :comments
end
