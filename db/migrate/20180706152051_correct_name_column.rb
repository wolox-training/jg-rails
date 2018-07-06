class CorrectNameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :Genre, :genre
    rename_column :books, :Author, :author
    rename_column :books, :Image, :image
    rename_column :books, :Title, :title
    rename_column :books, :Publisher, :publisher
    rename_column :books, :Year, :year
  end
end