class User < ApplicationRecord

    has_many :trails
    has_many :parks through: :trails 
    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, length: { in: 6..20 }
end
