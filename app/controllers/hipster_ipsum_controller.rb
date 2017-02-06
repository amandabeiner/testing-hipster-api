class HipsterIpsumController < ApplicationController

  def index
    @hipster_text = Hipster.new.text
  end
end
