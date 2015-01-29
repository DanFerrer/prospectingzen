class AddTitleToLeadGen < ActiveRecord::Migration
  def change
    add_column :leadgens, :title, :string
  end
end
