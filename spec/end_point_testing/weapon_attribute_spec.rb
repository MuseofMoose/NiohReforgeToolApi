require "rails_helper"

describe "getting all weapon attributes", type: :request do
	before(:each) do
		@route = ROUTE_PREFIX + "weapon_attributes/get_all"
  end

	context "with a valid id" do
	  it "returns the weapon attribute details" do
	    weapon_attribute = create(:weapon_attribute)
	    get @route
	    json = JSON.parse(response.body)


	    expect(response).to be_success
	    expect(json['result_status']).to eq('success')
	    expect(json['result_data']).to include('data')

	    dataset = json['result_data']['data']
	    data = dataset.first

	    expect(dataset.size).to eq(75)
	    expect(data).to include('id')
	    expect(data).to include('label')
	    expect(data).to include('value_type')
	    expect(data).to include('zero_familiarity_max_value')
	    expect(data).to include('max_familiarity_max_value')
	    expect(data).to include('rarity')
	    expect(data).to include('notes')
	    expect(data).to include('sub_group')
	  end
	end
end

describe "getting a weapon attribute by id", type: :request do
	before(:each) do
		@route = ROUTE_PREFIX + "weapon_attributes/get_by_id/"
  end

	context "with a valid id" do
	  it "returns the weapon attribute details" do
	    weapon_attribute = create(:weapon_attribute)
	    get @route << weapon_attribute.id.to_s
	    json = JSON.parse(response.body)

	    expect(response).to be_success
	    expect(json['result_status']).to eq('success')
	    expect(json['result_data']).to include('data')

	    data = json['result_data']['data']

	    expect(data).to include('id')
	    expect(data).to include('label')
	    expect(data).to include('value_type')
	    expect(data).to include('zero_familiarity_max_value')
	    expect(data).to include('max_familiarity_max_value')
	    expect(data).to include('rarity')
	    expect(data).to include('notes')
	    expect(data).to include('sub_group')
	  end
	end

	context "with a non-matching id" do
		it "returns record not found error" do
			weapon_attribute = create(:weapon_attribute)
			non_matching_id = weapon_attribute.id + 1
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
