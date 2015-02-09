class AddAttachmentLeadgensheetToLeadgens < ActiveRecord::Migration
  def self.up
    change_table :leadgens do |t|
      t.attachment :leadgensheet
    end
  end

  def self.down
    remove_attachment :leadgens, :leadgensheet
  end
end
