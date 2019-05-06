class CreateHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :habits, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.string :name
      t.text :sub_title
      t.string :back_image_id
      t.string :subheading_a
      t.text :instruction_a
      t.string :image_a_id
      t.string :subheading_b
      t.text :instruction_b
      t.string :image_b_id
      t.string :message
      t.boolean :delete_flag

      t.timestamps
    end
  end
end
