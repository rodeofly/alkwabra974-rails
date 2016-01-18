class CreateTentatives < ActiveRecord::Migration
  def change
    create_table :tentatives do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :chapter
      t.integer :level
      t.boolean :success
      t.integer :shots
      t.integer :beurk
      t.integer :score

      t.timestamps null: false
    end
  end
end
