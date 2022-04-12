class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.date :start
      t.string :intensity
      t.belongs_to :course, index: true
      t.belongs_to :creator, index: true

      t.timestamps
    end
  end
end
