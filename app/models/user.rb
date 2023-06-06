class User < ApplicationRecord
  has_many :vehicles

  validates :first_name, :last_name, :email, presence: true
end
