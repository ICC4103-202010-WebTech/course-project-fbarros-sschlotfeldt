class AddStatusToMessage < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :msg_status, :boolean, default:false
    add_column :messages, :msg_status2, :boolean, default:false
  end
end
