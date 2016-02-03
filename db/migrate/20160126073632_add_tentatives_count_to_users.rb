class AddTentativesCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tentatives_count, :integer, default: 0, null: false
  end
end
