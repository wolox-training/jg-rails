class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    drop_table :books
    create_table :books do |t|
      ## Database authenticatable
      t.string :Genre, null: false, default: ''
      t.string :Author, null: false, default: ''
      t.string :Image, null: false, default: ''
      t.string :Title, null: false, default: ''
      t.string :Publisher, null: false, default: ''
      t.string :Year, null: false, default: ''
    end
    add_index :books, :Title, unique: true
  end
end
