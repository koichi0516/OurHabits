class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :user_habit_id
      t.integer :challenge
      t.integer :challenge_time

      t.timestamps
    end
  end
end
