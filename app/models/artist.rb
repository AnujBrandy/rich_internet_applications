class Artist < ActiveRecord::Base
    validates :name, length: { maximum: 100 }
    validates :email, length: { maximum: 100 }
    validates :password, length: { maximum: 100 } 
    validates :gravatar_url, length: { maximum: 2083 }
    validates :description, length: { maximum: 200 }
    validates :gravatar_url, length: { maximum: 2083 }
    validates :skill, length: { maximum: 200 }
    validates :experience, inclusion: { in: 0..50 }
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
