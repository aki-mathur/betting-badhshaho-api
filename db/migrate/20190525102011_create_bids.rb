class CreateBids < ActiveRecord::Migration[5.2]
  def change
    create_table :bids do |t|
      t.references :user, index: false, null: false
      t.references :team, index: false, null: false
      t.references :match, index: false, null: false
      t.decimal :amount, precision: 9, scale: 2, null: false
      t.decimal :winning_amount, precision: 9, scale: 2, index: true
      t.boolean :is_winner, index: true
      t.references :created_by, index: true, null: false
      t.references :updated_by, index: true, null: false
      t.timestamps
    end
  end
end
