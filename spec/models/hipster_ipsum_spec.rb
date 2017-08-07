require 'rails_helper'

describe HipsterIpsum do
  describe "#fetch_data" do

    it "returns HTTParty::Response with text" do
      hipster_data = Hipster.api.new.fetch_data

      # expect(hipster_data.class).to eq HTTParty::Response
      # expect(hipster_data.code).to eq 200

      expect(hipster_data["text"]).to be_a String
      expect(hipster_data["text"]).to include("fair trade craft beer meggings")
    end
  end
end

# flannel American Apparel deep v

# Refactor: HipsterIpsum.new --> Hipster.api.new
# No longer an httpparty Response
# New source of data!
