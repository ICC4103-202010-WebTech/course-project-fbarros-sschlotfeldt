class CreateEventMs < ActiveRecord::Migration[6.0]
  def change
    create_table :event_ms do |t|
      t.references :members, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
