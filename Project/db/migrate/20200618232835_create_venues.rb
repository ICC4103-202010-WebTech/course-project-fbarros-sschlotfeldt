class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :v_name
      t.string :v_description
      t.string :v_address

      t.timestamps
    end
  end
end
