class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name, length: 100 , null: false, index: true
      t.string :short_name, length: 5, null: false, index: true
      t.string :captain, length: 100 , index: true
      t.datetime :deleted_at
      t.references :created_by, index: true, null: false
      t.references :updated_by, index: true, null: false
      t.timestamps
    end
  end
end
