class AddSenioritytoLeadGen < ActiveRecord::Migration
  def change
  	add_column :leadgens, :seniority, :string
  end
end
