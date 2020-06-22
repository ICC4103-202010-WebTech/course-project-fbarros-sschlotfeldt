class AddVoteStatusToEventMs < ActiveRecord::Migration[6.0]
  def change
    add_column :event_ms, :vote_status, :boolean, default:false
  end
end
