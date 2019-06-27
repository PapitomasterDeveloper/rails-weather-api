class Api::V1::LocationsController < ApiController
	before_action :set_location

	def show
# The show.json.jbuilder renders a way more appropiate to let know Rails that is a JSON, only on update actions
# But the code above works almost on the same way, the only difference is that with the jbuilder, Rails figures out all the work to be done in an implicit manner
# The code above is an explicit manner
=begin
		render json: {
			id: @location.id,
			name: @location.name
		}
=end		
	end

	def set_location
		@location = Location.find(params[:id])
	end
end
