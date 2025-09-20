class Loan < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :name, presence: true
  validates :email, presence: true, 
                    uniqueness: { case_sensitive: false }, 
                    format: { with: URI::MailTo::EMAIL_REGEXP }
end
