class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  rescue_from ActionController::ParameterMissing, with: :handle_missing_required_params_error


	def build_success_response(data = nil)
		json = {
			:result_status => 'success',
			:result_data => { :code => 100, :message => 'OK', :data => data },
		}.to_json;
	end

	def build_error_response(code, message, data = nil)
		json = {
			:result_status => 'error',
			:result_data => { :code => code, :message => message, :data => data },
		}.to_json;
	end

	def handle_missing_required_params_error(exception)
		# Consider parsing the exception and returning a custom error code.
		render json: build_error_response(
			MISSING_REQUIRED_PARAM_ERROR_CODE,
			MISSING_REQUIRED_PARAM_ERROR_DESCRIPTION + exception.param.to_s,
		)
	end

	def handle_record_not_found_error()
		render json: build_error_response(
					RECORD_NOT_FOUND_ERROR_CODE,
					RECORD_NOT_FOUND_ERROR_DESCRIPTION + stringify_params(self.params),
		);
	end

	def stringify_params(params)
		stringifiedParams = '';
		params.except(:action, :controller).each { |key, value| stringifiedParams << "#{key} - #{value} "}
		return stringifiedParams
	end

end
