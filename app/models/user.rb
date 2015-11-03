class User < ActiveRecord::Base
    validates :name, length: { maximum: 100 }
    validates :email, length: { maximum: 100 }
    validates :password, length: { maximum: 100 }
    
end
