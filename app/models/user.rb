class User < ActiveRecord::Base
    validates :name, length: { maximum: 100 } , presence: true
    validates :email, length: { maximum: 100 } , presence: true
    validates :password, length: { maximum: 100 } , presence: true
    
end
