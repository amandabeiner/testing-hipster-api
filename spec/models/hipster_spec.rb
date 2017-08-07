require "rails_helper"

describe Hipster do
  let(:hipster) { Hipster.new }

  describe "#text" do
    it "returns hipster text" do
      expect(hipster.text).to include "meggings"
    end
  end
end
