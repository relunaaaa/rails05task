class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length:{ maximum: 15 }
  validates :email, true

  has_secure_password
end

class User < ApplicationRecord
  validates :password, length:{ minimum: 8 }
  validates :password, length:{ maximum: 32 }

  validates_format_of :password, :with => /([0-9].*[a-zA-Z]|[a-zA-Z].*[0-9])/

  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
