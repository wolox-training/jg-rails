class Rent < ApplicationRecord
  validates :user_id, :book_id, :from, :to, presence: true
  belongs_to :book
  belongs_to :user, counter_cache: true
end
