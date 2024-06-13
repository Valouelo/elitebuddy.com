class AddAgeToBuddies < ActiveRecord::Migration[7.1]
  def change
    add_column :buddies, :category, :string
  end
end
