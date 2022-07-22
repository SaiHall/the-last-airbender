class BaseService
  def self.conn
    Faraday.new(url: "https://last-airbender-api.herokuapp.com/api/v1/")
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
