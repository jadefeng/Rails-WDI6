class PlanetsController < ApplicationController
	skip_before_filter :verify_authenticity_token  # Skip the normal before filter and don't run this check

	def index
		@planets = Planet.all
	end

	def new
	end

	def create
		planet = Planet.create planet_params
		redirect_to(planets_path)
	end

	def show
		@planet = Planet.find params[:id] 		# Find the planet based on the id search!
	end

	def destroy
		planet = Planet.find params[:id] 		# Finding the planet again!
		planet.destroy							# DESTROOOYYYYYYY
		redirect_to(planets_path)
	end

	def edit
		@planet = Planet.find params[:id]
	end

	def update
		planet = Planet.find params[:id] 		# Does not need to be an instance variable as we're not passing the information through!
		# planet.name = params['planet']['name']
		# planet.mass = params['planet']['mass']
		# # ...
		# planet.save

		planet.update planet_params 			# Shorter version of updating each one and saving the new planet params
		redirect_to(planet_path(planet.id)) 	# Redirect to the planet info page
	end

	private
	def planet_params	# Extra security to create planes privately 
		# Params White Listing! These are the params which are PERMITTED --> strong params
		params.require(:planet).permit(:name, :image, :orbit, :diameter, :mass, :moons) 	# Can only create planet when received a hash with planet stuff inside
	end
end

