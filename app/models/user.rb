class User < ApplicationRecord
  has_many :loans
  has_many :borrowed_books, through: :loans, source: :book
end
