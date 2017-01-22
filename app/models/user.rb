class User < ApplicationRecord
  has_many :posts, foreign_key: "author_id"
  has_secure_password
  validates :username, uniqueness: true
end
