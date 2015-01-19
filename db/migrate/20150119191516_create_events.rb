class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventname
      t.string :eventlocation
      t.date :eventdate
      t.string :eventnotes

      t.timestamps
    end
  end
end
