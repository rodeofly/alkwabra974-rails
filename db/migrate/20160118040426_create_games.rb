class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.string :screenshot

      t.timestamps null: false
    end
  end
end
