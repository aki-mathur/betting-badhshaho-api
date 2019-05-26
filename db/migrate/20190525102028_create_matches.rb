class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :name, length: 100 , null: false, index: true
      t.integer  "team1_id", null: false
      t.integer  "team2_id", null: false
      t.integer  "winner_team_id", index: true
      t.datetime :date, null: false, index: true
      t.datetime :deleted_at
      t.string :venue, length: 100
      t.references :created_by, index: true, null: false
      t.references :updated_by, index: true, null: false
    end
    add_index "matches", ["team1_id","team2_id",:date], name: "index_matches_on_t1_id_on_t2_id_and_date", unique: true, using: :btree
  end
end
