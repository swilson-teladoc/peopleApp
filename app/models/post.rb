class Post < ApplicationRecord
  belongs_to :person

  validates :subject, presence: true
  validates :body, presence: true, length: { minimum: 10}
  validates :date, presence: true
end
