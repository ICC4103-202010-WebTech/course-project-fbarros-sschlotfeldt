class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :userName
      t.string :email
      t.string :password
      t.boolean :adm

      #validates :userName, presence: true, uniqueness: true
      #validates :email, presence: true, uniqueness: true

      #validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

      t.timestamps
    end
  end
end
