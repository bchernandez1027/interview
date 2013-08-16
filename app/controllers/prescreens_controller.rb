class PrescreensController < ApplicationController

	def index
		@prescreens = Prescreen.all
	end


	def new
	end

	def create
		@prescreen = Prescreen.create(params[:prescreen])
		@prescreen.save
		redirect_to @prescreen
	end

	def show
		@prescreen = Prescreen.find(params[:id])
	end

	def edit
		@prescreen = Prescreen.find(params[:id])
	end

	def update
		 @prescreen = Prescreen.find(params[:id])
 
 		if @prescreen.update_attributes(params[:prescreen])
    		redirect_to @prescreen
  		else
    		render 'edit'
  		end
	end

	def destroy
	  @prescreen = Prescreen.find(params[:id])
	  @prescreen.destroy
	 
	  redirect_to prescreens_path
	end




end
