class SearchController < ApplicationController
  def index
    @characters_facade = CharactersFacade.new.affiliation(params[:nation])
  end
end