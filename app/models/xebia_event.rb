class XebiaEvent < ActiveRecord::Base
	validates_presence_of :name ,:message=>"Name cannot be left blank"
	validates_presence_of :venue ,:message=>"Venue cannot be left blank"
	validates_presence_of :date ,:message=>"Event Date is mandatory cannot be left blank"
	validates_presence_of :status, :message=>"Event Status is mandatory"
end
