class Api::V1::TeamsController < ApplicationController
	def get_all
		teams = Team.all
	end

	def get_by_id
		#TODO Add logic to exclude inactive records from being retrieved
		team = Team.find_by!(id: params[:id], active: true)
		render json: build_success_response(team)
	end

	def create
		#TODO Need to hook up the slack api and make sure the passed in slack_key is valid
		#TODO Setup bcrypt to manage the slack key (since it's sensitive info)
		newTeam = Team.new(create_params)
		if newTeam.save
			render json: build_success_response(newTeam)
		else
			render json: build_error_response(
				FAILED_TO_CREATE_TEAM_ERROR_CODE,
				FAILED_TO_CREATE_TEAM_ERROR_DESCRIPTION + stringify_params(params),
				newTeam.errors
			)
		end
	end

	def update_by_id
		updatedTeam = Team.update(params[:id], update_params)
		if updatedTeam
			render json: build_success_response(updatedTeam)
		else
			render json: build_error_response(
				FAILED_TO_UPDATE_TEAM_ERROR_CODE,
				FAILED_TO_UPDATE_TEAM_ERROR_DESCRIPTION + stringify_params(params),
				updatedTeam.errors
			)
		end
	end

	private

	def create_params
		params.require(:slack_key)
		params.permit(:slack_key)
	end

	def update_params
		params.permit(:active)
	end

end
