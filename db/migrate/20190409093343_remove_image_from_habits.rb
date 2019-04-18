class RemoveImageFromHabits < ActiveRecord::Migration[5.2]
  def change
    remove_column :habits, :image, :string
  end
end
