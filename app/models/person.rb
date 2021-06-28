class Person < ApplicationRecord
    has_many :posts, dependent: :destroy

    validates :name, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :bio, presence: true, length: { in: 10..500 }
end
