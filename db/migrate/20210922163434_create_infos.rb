class CreateInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :infos do |t|
      t.belongs_to :team, index: true
      t.string :voice_chat
      t.string :git
      t.string :documentation
      t.string :design
      t.string :project_tracker
      t.text :team_rules

      t.timestamps
    end
  end
end
