class NuggetsController < ApplicationController
  def index
  	@nugget = Nugget.new
  	@nuggets = Nugget.all
  end

  def create
  	#render :text => params[:nugget].inspect
  	Nugget.create nugget_params
  	redirect_to :back 

  end

  def edit
  	@nugget = Nugget.find params[:id]
  end

  def update
  	@nugget = Nugget.find params[:id]
  	if @nugget.update_attributes nugget_params
  		flash[:notice_good] = 'You nugget was successfully updated!'
  		redirect_to nuggets_path
  	else
  		flash[:notice_bad] = 'There was an error updating your nugget!'
  		redirect_to :back
  	end
  end

  def destroy
  	Nugget.destroy params[:id]
  	flash[:notice_good] = "Nugget successfully deleted."
  	redirect_to :back
  end


  private


  # WHY???
  def nugget_params
    allow = [:name, :description, :markForReview]
    params.require(:nugget).permit(allow)
  end

end
