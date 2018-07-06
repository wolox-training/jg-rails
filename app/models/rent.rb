class Rent < ApplicationRecord
  validates :user_id, :book_id, :from, :to, presence: true
end
