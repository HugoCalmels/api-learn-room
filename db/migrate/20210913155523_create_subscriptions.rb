class CreateSubscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :subscriptions do |t|

      t.belongs_to :team, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
