require 'rails_helper'

describe HipsterIpsum do
  describe "#fetch_data", vcr: { cassette_name: "hipster_ipsum" } do

    it "returns HTTParty::Response with text" do
      hipster_data = HipsterIpsum.new.fetch_data

      expect(hipster_data.class).to eq HTTParty::Response
      expect(hipster_data.code).to eq 200

      expect(hipster_data["text"]).to be_a String
      expect(hipster_data["text"]).to include "Direct trade  vice chambray schlitz culpa  enim.  Deserunt  knausgaard"
    end
  end
end
