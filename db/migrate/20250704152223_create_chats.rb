class CreateChats < ActiveRecord::Migration[7.1]
  def change
    create_table :chats do |t|
      t.text :user_message
      t.text :ai_response

      t.timestamps
    end
  end
end
