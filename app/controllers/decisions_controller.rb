class DecisionsController < ApplicationController
	def index
		@decisions = Decision.all
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
end
