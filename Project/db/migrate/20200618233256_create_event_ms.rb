class CreateEventMs < ActiveRecord::Migration[6.0]
  def change
    create_table :event_ms do |t|
      t.references :user, null: false, foreign_key: {on_delete: :cascade}
      t.references :event, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
