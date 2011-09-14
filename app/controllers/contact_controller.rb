class ContactController < ApplicationController
  
  def list
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
    @fullname = @contact.firstname + " " + @contact.lastname	
  end

  def edit
    @contact = Contact.find(params[:id])
  end
  
  def update
    @contact = Contact.find(params[:id])
	@contact.update_attributes(params[:contact]) 
	redirect_to(:action=>'show',:id=>@contact.id)
  end

  def new
  end
  
  def create
    @contact = Contact.new(params[:contact])
	@contact.save
	redirect_to(:action=>'list')
  end
  
  def delete
     @contact = Contact.find(params[:id])
  end
  def destroy
     @contact = Contact.find(params[:id])
     @contact.destroy
     redirect_to(:action => 'list')     
  end

end
