class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.string :description
      t.references :venue, null: false, foreign_key: true
      t.boolean :visibility

      t.timestamps
    end
  end
end
