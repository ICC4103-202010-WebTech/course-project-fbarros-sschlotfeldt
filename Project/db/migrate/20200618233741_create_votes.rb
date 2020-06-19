class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references :event, null: false, foreign_key: true
      t.date :date
      t.integer :n_votes

      t.timestamps
    end
  end
end
