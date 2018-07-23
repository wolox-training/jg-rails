class RemoveNotNullUserBookSuggestion < ActiveRecord::Migration[5.2]
  def change
    change_column_null :book_suggestions, :user_id, true
  end
end
