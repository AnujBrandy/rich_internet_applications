class Artist < ActiveRecord::Base
    before_save { self.email = email.downcase }
    validates :name, length: { maximum: 100 } , presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :email, length: { maximum: 250 } , presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

    #validates :password, length: { maximum: 100 } , presence: true
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
    validates :gravatar_url, length: { maximum: 2083 }
    validates :description, length: { maximum: 200 } 
    
    validates :skill, length: { maximum: 200 } 
    validates :experience, length: { maximum: 10 }
 
    validates :facebook_url, length: { maximum: 2083 }
    validates :twitter_url, length: { maximum: 2083 }
    validates :contact_no, length: { maximum: 15 }
    validates :address, length: { maximum: 300 }
    validates :country, length: { maximum: 100 }
    validates :state, length: { maximum: 100 }
    validates :city, length: { maximum: 100 }
    validates :availability, length: { maximum: 100 }
    validates :youtube_url, length: { maximum: 2083 }
    validates :behance_url, length: { maximum: 2083 }
    validates :facebook_page, length: { maximum: 2083 }
    validates :blog_url, length: { maximum: 2083 }
    validates :website_url, length: { maximum: 2083 }
    validates :other_url, length: { maximum: 2083 }
    validates :motto_line, length: { maximum: 200 }
    
end
