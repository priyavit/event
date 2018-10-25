class XebiaEvent < ActiveRecord::Base
	validates_presence_of :name, :venue, :date
	# validates_format_of :date, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "^Date must be in the following format: mm/dd/yyyy"
end
