class CreateBuddies < ActiveRecord::Migration[7.1]
  def change
    create_table :buddies do |t|
      t.string :name
      t.string :description
      t.string :options
      t.integer :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
