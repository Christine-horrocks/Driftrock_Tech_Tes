
class DataManager
  attr_reader :user_data

  def initialize
    @user_data = [
      {
      "id": "12DF-2324-GA2D-31RT", "first_name": "Drift", "last_name": "Rock",
      "phone": "0-200-100-1234", "email": "drift.rock@email.com"
      },
      {
      "id": "33DF-2324-GA2D-31RT", "first_name": "Glide", "last_name": "Rock",
      "phone": "0-333-100-1234", "email": "glide.rock@email.com"
      },
       ]
  end

  def total_spend(em)
    user = @user_data.select { |user| user[:email] == em }
    user[0].fetch(:id)
  end

end
