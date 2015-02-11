class ChangeSeniorityFromStringToText < ActiveRecord::Migration
  def up
  	change_column :leadgens, :seniority, :text
  end
  	
  def down
  	change_column :leadgens, :seniority, :string
  end
end
