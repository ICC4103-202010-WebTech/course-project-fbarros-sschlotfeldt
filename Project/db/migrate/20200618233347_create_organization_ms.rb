class CreateOrganizationMs < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_ms do |t|
      t.references :organization, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
