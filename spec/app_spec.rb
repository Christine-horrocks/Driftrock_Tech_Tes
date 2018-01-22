require 'app.rb'

describe DataManager do

  it 'identifies the user_id from the email' do
    expect(subject.total_spend('drift.rock@email.com')).to eq("12DF-2324-GA2D-31RT")
  end
end
