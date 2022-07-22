class SearchController < ApplicationController
  def index
    @characters = AvatarFacade.create_affiliation_characters(nation_params)
  end

  private

  def nation_params
    params[:nation].gsub(/_/, '+')
  end
end
