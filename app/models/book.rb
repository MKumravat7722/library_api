class Book < ApplicationRecord
  has_many :loans
  has_many :borrowers, through: :loans, source: :user

  validates :title, :author, :published_year, presence: true
  validates :isbn, uniqueness: true
  validates :copies_available, numericality: { greater_than_or_equal_to: 0 }


  scope :search, ->(query) {
    where("title ILIKE :query OR author ILIKE :query", query: "%#{query}%") if query.present?
  }

  scope :sorted, ->(attribute, order) {
    order("#{attribute} #{order}") if attribute.present? && order.present?
  }
end
