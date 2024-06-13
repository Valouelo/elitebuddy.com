class AddProposalAndJoinedYearToBuddies < ActiveRecord::Migration[7.1]
  def change
    add_column :buddies, :proposal, :text
    add_column :buddies, :joined_year, :integer
  end
end
