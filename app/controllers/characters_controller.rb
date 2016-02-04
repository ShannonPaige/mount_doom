class CharactersController < ApplicationController
  def new
    @character = Character.new
    @avatars = Avatar.all
    render layout: 'wide',  :locals => {:background => "shire"}
  end
end