class AddRentsCountToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :rents_count, :integer
    User.find_each do |user|
      user.update_attribute(:rents_count, user.rents.count)
    end
  end
end
