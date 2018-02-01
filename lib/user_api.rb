require 'net/http'
require 'json'

class API
  attr_reader :data_packet

  def fetch_all(api_end_point)
    all = []
    curr_page = 1
    begin
      response = fetch_page(curr_page, api_end_point)
      curr_page += 1
      all.concat(response)
    end while response.any?
    all
  end

  private

  def fetch_page(page, api_end_point)
    clean_packet(request(page, api_end_point))
  end

  def request(page, api_end_point)
    uri = URI("https://driftrock-dev-test-2.herokuapp.com/#{api_end_point}?per_page=1000&page=#{page}")
    (Net::HTTP.get(uri))
  end

  def clean_packet(request_response)
    JSON.parse(request_response).fetch("data")
  end
end
