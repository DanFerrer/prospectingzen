class AddAttachmentSpreadsheetToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :spreadsheet
    end
  end

  def self.down
    drop_attached_file :events, :spreadsheet
  end
end
