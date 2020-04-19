class CreateProfilePages < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_pages do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :lastName
      t.string :bio
      t.string :address

      t.timestamps
    end
  end
end
