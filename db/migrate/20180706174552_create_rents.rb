class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.belongs_to :users, index: true
      t.belongs_to :books, index: true
      t.date :from, null: false, default: ''
      t.date :to, null: false, default: ''
    end
  end
end
