class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id
      t.integer :habit_id
      t.string :text
      t.boolean :delete_flag

      t.timestamps
    end
  end
end
