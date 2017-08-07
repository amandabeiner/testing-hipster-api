class Hipster
  @@api = HipsterIpsum
  cattr_accessor :api

  attr_reader :text

  def initialize
    @text = text
  end

  def text
    get_hipster_data["text"]
  end

  private

  def get_hipster_data
    @hipster_data ||= api.new.fetch_data
  end

end
