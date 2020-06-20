class AddStartVoteToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :start_vote, :integer, default:0
  end
end
