class DecisionsController < ApplicationController
	def index
		@decisions = Decision.order(:updated_at)
		respond_to do |format|
	        format.html
	        format.json { render :json => @decisions }
      	end
	end
	def create
		@decision = nil
		puts params.inspect
		if request.method == "POST"
			@decision = Decision.new(params[:decision])#(:decision => params[:decision][:decision], :mom => params[:decision][:mom], )
		else
			@decision = Decision.new(:decision => params[:decision])
		end
		@decision.save
		redirect_to @decision
	end

	def new
	end

	def show
		@decision = Decision.find(params[:id])
		respond_to do |format|
	        format.html
	        format.json { render :json => @decision }
      	end
	end

	def totals
		@totals = {:mom => Decision.sum(:mom), :friends => Decision.sum(:friends), :xcurr => Decision.sum(:xcurr), :edu => Decision.sum(:edu)}

		respond_to do |format|
	        format.html
	        format.json { render :json => @totals }
      	end
	end

	def reset
		Decision.destroy_all
	end
end
