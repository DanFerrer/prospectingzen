class AddEventNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :eventname, :string
  end
end
