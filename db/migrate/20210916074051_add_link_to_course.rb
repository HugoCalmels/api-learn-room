class AddLinkToCourse < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :link_to_course, :string
  end
end
