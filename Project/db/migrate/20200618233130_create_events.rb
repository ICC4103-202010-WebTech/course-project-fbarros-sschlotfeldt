class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :e_name
      t.references :user, null: true, foreign_key: {on_delete: :cascade}
      t.references :organization, null: true, foreign_key: {on_delete: :cascade}
      t.string :e_description
      t.references :venue, null: false, foreign_key: true
      t.boolean :visibility

      t.timestamps
    end
  end
end
