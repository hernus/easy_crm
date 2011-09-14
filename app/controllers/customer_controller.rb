class CustomerController < ApplicationController
  def list
    @customers = Customer.all
  end

  def new
    
  end

  def create
    @customer = Customer.new(params[:customer])
	@customer.save
	redirect_to(:action => "list")
  end
  
  def edit
    @customer = Customer.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:id])
	@customer.update_attributes(params[:customer])
	redirect_to(:action=>'show',:id=>@customer.id)
  end
  

  def show
    @customer = Customer.find(params[:id])
  end

  def delete
    @customer = Customer.find(params[:id])
  end  
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to(:action=>'list')    
  end
  
end
