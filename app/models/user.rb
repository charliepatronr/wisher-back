class User < ApplicationRecord

    validates :email, uniqueness: true


    # validates :username, :presence => true
    # validates_uniqueness_of :username, :case_sensitive => false
    # validates :username, :length => { :in => 6..30}

    # validates :password, :length => { :minimum => 6 }
    # PASSWORD_FORMAT = /\A
    # (?=.*[A-Z]) # Must contain an uppercase character
    # (?=.*[a-z]) # Must contain a lowercase character
    # (?=.*\d) # Must contain a digit
    # (?=.*[[:^alnum:]]) # Must contain a symbol
    # /
    # validates :password, format: { 
    # with: PASSWORD_FORMAT, 
    # :message => 'Password must include: 1 uppercase, 1 lowercase, 1 digit and 1 special character' 
    # }
    
    
    has_many :friendships
    has_many :friends, through: :friendships

    has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
    has_many :inverse_friends, :through => :inverse_friendships, :source => :user

    has_many  :wishes

    has_secure_password
end
