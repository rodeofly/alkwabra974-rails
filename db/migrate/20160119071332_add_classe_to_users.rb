class AddClasseToUsers < ActiveRecord::Migration
  def change
    add_column :users, :classe, :string
  end
end
