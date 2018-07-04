class DropIdFromBook < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :id
  end
end
