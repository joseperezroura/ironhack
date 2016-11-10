class ContactController < ApplicationController

def addressbook			
	@contacts = Contact.all
	.order(created_at: :desc)
	.limit(10)

	render :addressbook
end

def contact
	
	render :contact  
end

def new
	@my_contact = Contact.new

	render :new
end

def create
			
		@my_contact = Contact.new(
			:name => params[:contact][:name],
			:address => params[:contact][:address],
			:email => params[:contact][:email],
			:phone => params[:contact][:phone])
		@my_contact.save

		redirect_to contacts_path
		

	end


end
