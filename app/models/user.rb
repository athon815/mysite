class User < ActiveRecord::Base
	has_many :posts
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
  validates :name, uniqueness: true
  validates :name, length: { minimum: 5 }
end
