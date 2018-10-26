class XebiaEventController < ApplicationController
	def list

		@events = XebiaEvent.all
	end

	def new
		@event = XebiaEvent.new
	end

	def edit
		@event = XebiaEvent.find_by(id: params[:id])
	end

	def update
 		@event = XebiaEvent.find_by(id: params[:id].to_i)
	   if  @event.update_attributes(name: params[:xebia_event]["name"],venue:params[:xebia_event]["venue"],date:params[:xebia_event]["date"],status:params[:xebia_event]["status"]) == true
	      redirect_to :action => 'show_event_details', :id => @event
	  else
	  		@event.errors.messages.each do |k,val|
  				puts val
  			end
	   end
	end

	def show
	end

	def create
	   @event = XebiaEvent.new(xebia_event_params)
		
	   if @event.save
	      redirect_to :action => 'list'
  		else
  			@event.errors.messages.each do |k,val|
  				puts val
  			end
	   end
	   
	end

	def show_event_details
		@event = XebiaEvent.find(params[:id])
	end

	def xebia_event_params
	   params.require(:events).permit(:name, :venue, :date, :status)
	end
end