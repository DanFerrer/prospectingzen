class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :company
      t.string :title
      t.string :email
      t.string :phone
      t.string :address
      t.string :linkedin
      t.string :twitter
      t.string :facebook
      t.string :previouscompany
      t.string :notes
      t.string :personalnote
      t.date :duedate

      t.timestamps
    end
  end
end
