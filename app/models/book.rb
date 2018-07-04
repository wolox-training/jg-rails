class Book < ApplicationRecord
  validates :Genre, :Author, :Image, :Title, :Publisher, :Year, presence: true
end
