require "rails_helper"

describe "getting a team by id", type: :request do
	before(:each) do
		@route = ROUTE_PREFIX + "get_by_id/"
  end

	context "with a valid id" do
	  it "returns the team details" do
	    team = create(:team)
	    get @route << team.id.to_s
	    json = JSON.parse(response.body)

	    expect(response).to be_success
	    expect(json['result_status']).to eq('success')
	    expect(json['result_data']).to include('data')

	    data = json['result_data']['data']

	    expect(data).to include('id')
	    expect(data).to include('slack_key')
	    expect(data['active']).to eq(true)
	  end
	end

	context "with a non-matching id" do
		it "returns record not found error" do
			team = create(:team)
			non_matching_id = team.id + 1
			get @route << (non_matching_id).to_s
			json = JSON.parse(response.body)

			expect(response).to be_success
			expect(json['result_status']).to eq('error')
			expect(json['result_data']).to include('data')

	    expect(json['result_data']['code']).to eq(RECORD_NOT_FOUND_ERROR_CODE)
	    expect(json['result_data']['message']).to eq(RECORD_NOT_FOUND_ERROR_DESCRIPTION + "id - #{non_matching_id}")
		end
	end
end

describe "creating a new team", type: :request do
	before(:each) do
		@route = ROUTE_PREFIX + "create"
	end

	context "with valid params" do
		it "returns the team details" do
			slack_key = 'ASBWERN12421N'
			params = {slack_key: slack_key}
			post @route, params
			json = JSON.parse(response.body)

			expect(response).to be_success
	    expect(json['result_status']).to eq('success')
	    expect(json['result_data']).to include('data')

	    data = json['result_data']['data']

	    expect(data).to include('id')
	    expect(data).to include('active')

	    expect(data['slack_key']).to eq(slack_key)
		end
	end

	context "with an already-used slack key" do
		it "returns failed to create team error" do
			team = create(:team)
			params = {slack_key: team.slack_key}
			post @route, params
			json = JSON.parse(response.body)

			expect(response).to be_success
			expect(json['result_status']).to eq('error')
			expect(json['result_data']).to include('data')

			expect(json['result_data']['code']).to eq(FAILED_TO_CREATE_TEAM_ERROR_CODE)
	    expect(json['result_data']['message']).to eq(FAILED_TO_CREATE_TEAM_ERROR_DESCRIPTION + "slack_key - #{team.slack_key}")
		end
	end

	context "with no slack key" do
		it "returns missing required param error" do
			post @route
			json = JSON.parse(response.body)

			expect(response).to be_success
			expect(json['result_status']).to eq('error')
			expect(json['result_data']).to include('data')

			expect(json['result_data']['code']).to eq(MISSING_REQUIRED_PARAM_ERROR_CODE)
	    expect(json['result_data']['message']).to eq(MISSING_REQUIRED_PARAM_ERROR_DESCRIPTION + "slack_key")
		end
	end

	context "with an invalid slack key" do
		#TODO Add test after adding slack api key validation
	end
end

describe "updating a team", type: :request do
	before(:each) do
		@route = ROUTE_PREFIX + "update_by_id/"
	end

	context "with valid params" do
		it "returns the updated team details" do
			team = create(:team)
			params = {active: false}
			patch @route << team.id.to_s, params
			json = JSON.parse(response.body)

			expect(response).to be_success
			expect(json['result_status']).to eq('success')
	    expect(json['result_data']).to include('data')

	    data = json['result_data']['data']

	    expect(data).to include('id')
	    expect(data).to include('slack_key')
	    expect(data['active']).to eq(false)
		end
	end

	context "with a non-matching id" do
		it "returns record not found error" do
			team = create(:team)
			params = {active: false}
			non_matching_id = team.id + 1
			patch @route << (non_matching_id).to_s, params
			json = JSON.parse(response.body)

			expect(response).to be_success
			expect(json['result_status']).to eq('error')
			expect(json['result_data']).to include('data')

	    expect(json['result_data']['code']).to eq(RECORD_NOT_FOUND_ERROR_CODE)
	    expect(json['result_data']['message']).to eq(RECORD_NOT_FOUND_ERROR_DESCRIPTION + "active - false id - #{non_matching_id}")
		end
	end
end
