class CreateLeadgens < ActiveRecord::Migration
  def change
    create_table :leadgens do |t|
      t.text :companies
      t.date :deadline
      t.integer :leadsper

      t.timestamps
    end
  end
end
