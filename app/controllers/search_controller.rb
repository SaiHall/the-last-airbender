class SearchController < ApplicationController
  def index
    @characters = AvatarFacade.create_affiliation_characters(nation_params)
    @count = AvatarFacade.create_search_number(nation_params)
  end

  private

  def nation_params
    params[:nation].gsub(/_/, '+')
  end
end
