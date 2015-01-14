class AddEventLocationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :eventlocation, :string
  end
end
