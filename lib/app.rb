
class DataManager

  def initialize(api: API.new)
    @user_data = api.fetch_all("users")
    @purchase_data = api.fetch_all("purchases")
  end

  def total_spend(email)
    user = @user_data.select { |user| user['email'] == email }
    raise "blah" if user.empty?
    user_id = user[0].fetch('id')
    items = @purchase_data.select { |purchase| purchase['user_id'] == user_id}
    spends = items.map { |item| item.fetch('spend').to_f }
    spends.sum.round(2)
  end

  def average_spend(email)
    user = @user_data.select { |user| user['email'] == email }
    user_id = user[0].fetch('id')
    items = @purchase_data.select { |purchase| purchase['user_id'] == user_id}
    spends = items.map { |item| item.fetch('spend').to_f }
    total = spends.sum.round(2)
    average = total / spends.count
    average.round(2)
  end

  def most_loyal
    user_ids = @purchase_data.map { |purchase| purchase.fetch('user_id') }
    freq = user_ids.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    most_loyal_id = user_ids.max_by { |v| freq[v] }
    user = @user_data.select { |user| user['id'] == most_loyal_id }
    user_id = user[0].fetch('email')
  end

end
