class AvatarService < BaseService

  def self.get_affilitaion(search)
    response = conn.get("characters?affiliation=#{search}&perPage=1000")
    data = get_json(response)
  end
end
