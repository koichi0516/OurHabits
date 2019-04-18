class AddImageIdToHabits < ActiveRecord::Migration[5.2]
  def change
    add_column :habits, :image_id, :string
  end
end
