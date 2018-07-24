class AddRentsCountToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rents_count, :integer
  end
end
