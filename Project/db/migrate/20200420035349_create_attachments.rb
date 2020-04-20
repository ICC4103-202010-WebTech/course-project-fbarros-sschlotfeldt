class CreateAttachments < ActiveRecord::Migration[6.0]
  def change
    create_table :attachments do |t|
      t.references :comment, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.references :orgHomepage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
