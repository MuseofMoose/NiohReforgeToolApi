require 'rails_helper'

describe ApplicationController, type: :controller do
  before do
    class Exception
      attr_accessor :param
    end
  end

  controller do
    def bsr
      render json: build_success_response(params[:data])
    end

    def ber
      render json: build_error_response(params[:code], params[:message], params[:data])
    end

    def hmrpe
      exception = Exception.new()
      exception.param = params[:exception_message]
      handle_missing_required_params_error(exception)
    end

    def hrnfe
      handle_record_not_found_error
    end

    def sp
      render json: stringify_params(params)
    end
  end

  describe "build success response" do
    it "returns a success response with passed in data" do
      routes.draw { get "bsr" => "anonymous#bsr" }
      get :bsr, data: {potato: 'chicken'}
      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json['result_status']).to eq('success')
      expect(json['result_data']).to include('data')

      data = json['result_data']['data']

      expect(data).to include('potato')
      expect(data['potato']).to eq('chicken')
    end
  end

  describe "build error response" do
    it "resturns an error response with passed in code, message, and data" do
      routes.draw { get "ber" => "anonymous#ber" }
      get :ber, { code: 1000, message: 'hello', data: {key: 'value'} }
      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json['result_status']).to eq('error')
      expect(json['result_data']).to include('data')

      expect(json['result_data']['code']).to eq('1000')
      expect(json['result_data']['message']).to eq('hello')
      expect(json['result_data']['data']).to eq({"key" => 'value'})
    end
  end

  describe "handle missing required params error" do
    it "returns an error response with the code and message of the passed in exception" do
      routes.draw { get "hmrpe" => "anonymous#hmrpe" }
      exception_message = "hello"

      get :hmrpe, exception_message: exception_message
      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json['result_status']).to eq('error')
      expect(json['result_data']).to include('data')

      expect(json['result_data']['code']).to eq(MISSING_REQUIRED_PARAM_ERROR_CODE)
      expect(json['result_data']['message']).to eq(MISSING_REQUIRED_PARAM_ERROR_DESCRIPTION + 'hello')
      expect(json['result_data']['data']).to eq(nil)
    end
  end

  describe "handle record not found error" do
    it "returns an error response with the passed in params" do
      routes.draw { get "hrnfe" => "anonymous#hrnfe" }

      #Data should be
      data = ActionController::Parameters.new({potato: 'chicken'})
      get :hrnfe, data
      json = JSON.parse(response.body)

      expect(response).to be_success
      expect(json['result_status']).to eq('error')
      expect(json['result_data']).to include('data')

      expect(json['result_data']['code']).to eq(RECORD_NOT_FOUND_ERROR_CODE)
      expect(json['result_data']['message']).to eq(RECORD_NOT_FOUND_ERROR_DESCRIPTION + 'potato - chicken')
      expect(json['result_data']['data']).to eq(nil)
    end
  end

  describe "stringify params" do
    it "returns a string version of the passed in Parameter object" do
      routes.draw { get "sp" => "anonymous#sp" }
      exception_message = "hello"

      #Data should be
      data = ActionController::Parameters.new({potato: 'chicken', tomato: 'pork'})
      get :sp, data
      string = response.body

      expect(response).to be_success
      expect(string).to eq('potato - chicken tomato - pork')
    end
  end
end
