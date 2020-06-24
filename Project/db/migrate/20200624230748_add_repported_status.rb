class AddRepportedStatus < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :report_status, :integer, default:0
    add_column :events, :report_status, :integer, default:0
  end
end
