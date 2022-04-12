class AddTimezoneNumberToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :timezone_number, :integer
  end
end
