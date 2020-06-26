class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :o_name
      t.references :user, null: false, foreign_key: {on_delete: :cascade}
      t.string :o_description

      t.timestamps
    end
  end
end
