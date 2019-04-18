class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits do |t|
      t.string :name
      t.text :sub_title
      t.string :back_image_id
      t.text :instruction_a
      t.string :image_a_id
      t.text :instruction_b
      t.string :image_b_id
      t.integer :member_number
      t.integer :master_number
      t.boolean :delete_flag

      t.timestamps
    end
  end
end
