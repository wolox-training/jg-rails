class AddVerificationCodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :verification_code, :string, null: false,default: false
  end
end
