class Event < ActiveRecord::Base
	belongs_to :user

	has_attached_file :spreadsheet, :default_url => "http://simpleicon.com/wp-content/uploads/paperclip.png"
end
