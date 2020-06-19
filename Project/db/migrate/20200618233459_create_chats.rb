class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.references :inbox1
      t.references :inbox2

      t.timestamps
    end
  end
end
