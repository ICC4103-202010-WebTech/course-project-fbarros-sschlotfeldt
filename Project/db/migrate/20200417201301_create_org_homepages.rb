class CreateOrgHomepages < ActiveRecord::Migration[6.0]
  def change
    create_table :org_homepages do |t|
      t.string :name
      t.string :description
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
