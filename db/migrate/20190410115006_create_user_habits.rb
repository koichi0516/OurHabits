class CreateUserHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :user_habits do |t|
      t.integer :habit_id
      t.integer :user_id
      t.datetime :start_at
      t.datetime :limit_at
      t.integer :count

      t.timestamps
    end
  end
end
