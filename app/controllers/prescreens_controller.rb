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

end
