class User < ApplicationRecord
  belongs_to :role
  validates :email, presence: true, uniqueness: true
end
