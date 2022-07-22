class AvatarFacade

  def self.create_affiliation_characters(search)
    json = AvatarService.get_affilitaion(search)
    json[0..24].map { |data| Character.new(data) }
  end
end
