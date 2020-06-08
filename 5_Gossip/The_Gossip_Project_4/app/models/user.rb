class User < ApplicationRecord
    belongs_to :city
    has_many :comment
    has_many :gossips, through: :comment
    has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"  
    has_secure_password 
    validates :password, presence: true, length: { minimum: 6 }
    validates :email, 
        presence: true,
        uniqueness: true,
        format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
    has_many :likes


    def entire_name
        return first_name + " " + last_name
    end
    
end
