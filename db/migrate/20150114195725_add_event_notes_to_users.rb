class AddEventNotesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :eventnotes, :string
  end
end
