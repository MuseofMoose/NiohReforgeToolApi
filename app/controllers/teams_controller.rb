class TeamsController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found_error

	def get_all
		teams = Team.all;
	end

	def get_by_id
		team = Team.find(fetch_params);
		render json: build_success_response(team);
	end

	def create
		newTeam = Team.new(create_params);
		if newTeam.save
			render json: build_success_response(newTeam);
		else
			render json: build_error_response(
				FAILED_TO_CREATE_TEAM_ERROR_CODE,
				FAILED_TO_CREATE_TEAM_ERROR_DESCRIPTION + stringify_params(params),
				newTeam.errors
			);
		end
	end

	def update
		updatedTeam = Team.update(fetch_params, update_params);
		if updatedTeam
			render json: build_success_response(updatedTeam);
		else
			render json: build_error_response(
				FAILED_TO_UPDATE_TEAM_ERROR_CODE,
				FAILED_TO_UPDATE_TEAM_ERROR_DESCRIPTION + stringify_params(params),
				updatedTeam.errors
			);
		end
	end

	private

	def fetch_params
		params.require(:id);
	end

	def create_params
		params.require(:slack_key);
		params.permit(:slack_key);
	end

	def update_params
		params.permit(:active);
	end

end
