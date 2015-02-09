class Leadgen < ActiveRecord::Base
	belongs_to :user

	has_attached_file :leadgensheet
	validates_attachment_content_type :leadgensheet, :content_type => [ 'text/csv','text/comma-separated-values','text/csv','application/csv','application/excel','application/vnd.ms-excel','application/vnd.msexcel','text/anytext','text/plain' ], :message => 'file must be a .csv' 
	has_many :leadgensheet
end
