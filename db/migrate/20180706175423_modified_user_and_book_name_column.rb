class ModifiedUserAndBookNameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :rents, :users_id, :user_id
    rename_column :rents, :books_id, :book_id
  end
end
