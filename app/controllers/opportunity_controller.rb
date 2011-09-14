class OpportunityController < ApplicationController
  def list
    @opportunities = Opportunity.all
  end

  def show
      @opportunity = Opportunity.find(params[:id])
  end

  def edit
     @opportunity = Opportunity.find(params[:id])
  end
  
  def update
     @opportunity = Opportunity.find(params[:id])  
	 @opportunity.update_attributes(params[:opportunity])
	 @opportunity.save
	 redirect_to(:action=>'show',:id=>@opportunity.id)
  end

  def new
  end
  
  def create
    @opportunity = Opportunity.new(params[:opportunity])
	@opportunity.save
	redirect_to(:action=>'list')	
  end
  
  def delete
    @opportunity = Opportunity.find(params[:id])
  end
  
  def destroy
    @opportunity = Opportunity.find(params[:id])  
	@opportunity.destroy
	redirect_to(:action=>'list')
  end

end
