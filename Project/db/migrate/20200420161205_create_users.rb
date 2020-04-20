class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :userName
      t.string :email
      t.string :password
      t.boolean :adm

      t.timestamps
    end
  end
end
