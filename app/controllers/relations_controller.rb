class RelationsController < ApplicationController
before_filter :get_country

	def get_country
		@country = Country.find(params[:country_id])
	end

	def show
		@relation = Relation.find(params[:id])
	end

  def index
    @relations = @country.relations
  end
  
  def new
    @relation = Relation.new
  end
  
  def create
    @relation = @country.relations.new(relation_params)

		respond_to do |format|
    	if @relation.save
				format.html { redirect_to [@country, @relation],
    	  notice: "Successfully created relation." }
    	  format.json { render json: [@country, @relation],
														status: :created,
														location: [@country, @relation] }
    	else
				format.html { render :action => 'new' }
				format.json { render json: @tweet.errors,
																	status: :unprocessable_entity }
    	end
  	end
	end  

  def edit
    @relation = Relation.find(params[:id])
  end
  
  def update
    @relation = Relation.find(params[:id])
    if @relation.update_attributes(params[:relation])
      flash[:notice] = "Successfully updated relation."
      redirect_to article_url(@relation.country_id)
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @relation = Relation.find(params[:id])
    @relation.destroy
    flash[:notice] = "Successfully destroyed relation."
    redirect_to article_url(@relation.country_id)
  end

private

def relation_params
  params.require(:relation).permit!
end

end
