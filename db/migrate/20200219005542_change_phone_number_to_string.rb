class ChangePhoneNumberToString < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :phone_number, :string
    change_column :restaurants, :category, :string
  end
end
