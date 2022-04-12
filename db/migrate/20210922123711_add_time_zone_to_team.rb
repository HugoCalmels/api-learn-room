class AddTimeZoneToTeam < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :timezone, :string
    add_column :teams, :timezone_number, :integer
  end
end
