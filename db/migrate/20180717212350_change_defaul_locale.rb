class ChangeDefaulLocale < ActiveRecord::Migration[5.2]
  def change
    User.update_all(locale: 'en')
    change_column_default(:users, :locale, 'en')
  end
end
