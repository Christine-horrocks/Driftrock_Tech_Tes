require 'user_api'

describe API do

  # it 'gets something back' do
  #   expect(subject.fetch_page).to_not be_empty
  # end

  it 'returns more than one page of data' do
    expect(subject.fetch_all.count).to be > 1000
  end

  # it 'puts data in data_packet' do
  #   expect {
  #     subject.request
  #   }.to change {
  #     subject.data_packet
  #   }
  # end
  #
  # it 'puts the data in the correct form' do
  #   r = subject.request
  #   expect {
  #     subject.clean_packet(r)
  #   }.to change {
  #     subject.data_packet
  #   }
  # end

end
