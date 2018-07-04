class User < ApplicationRecord
    has_one :review
    
    has_secure_password
    validates :password, presence: true, length: {minimum: 8}
    
end
