class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :description
      t.string :address

      t.timestamps
    end
  end
end