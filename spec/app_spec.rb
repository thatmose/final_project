require 'spec_helper'
require 'sinatra'
require 'sinatra/base'
require_relative '../app/log_well_view'

RSpec.describe LogWellView do
  
  def app
    LogWellView
  end

  describe "/" do
    it "returns a status message of 200" do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end

end