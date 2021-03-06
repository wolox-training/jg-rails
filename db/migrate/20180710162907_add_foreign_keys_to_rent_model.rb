class AddForeignKeysToRentModel < ActiveRecord::Migration[5.2]
  def change
    change_table :rents do |t|
      t.remove_references :user
      t.remove_references :book
      add_reference :rents, :user, foreign_key: true, null: false
      add_reference :rents, :book, foreign_key: true, null: false
    end
  end
end
