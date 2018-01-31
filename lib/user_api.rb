require 'net/http'
require 'json'

class UserAPI
  attr_reader :data_packet

  def fetch_all
    all = []
    curr_page = 1
    begin
      response = fetch_page(curr_page)
      curr_page += 1
      all.concat(response)
    end while response.any?
    all
  end

  private

  def fetch_page(page)
    clean_packet(request(page))
  end

  def request(page)
    uri = URI("https://driftrock-dev-test-2.herokuapp.com/users?per_page=1000&page=#{page}")
    (Net::HTTP.get(uri))
  end

  def clean_packet(request_response)
    JSON.parse(request_response).fetch("data")
  end
end
