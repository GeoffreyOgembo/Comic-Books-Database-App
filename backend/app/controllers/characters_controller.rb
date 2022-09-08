class CharactersController < ApplicationController

    # /\/characters\/?/
    get "/characters" do
        characters = Character.all
        characters.to_json
    end

    get "/characters/:id" do
        character = Character.find_by(id: params[:id])
        if character
            character.to_json
        else
            {error: "Character does not exist"}.to_json
        end
    end

    get "/characters/:id/comics" do
        character = Character.find_by(id: params[:id])
        if character
            character.comics.to_json
        else
            {error: "Character does not exist"}.to_json
        end
    end

    post "/characters" do
        character = Character.create(
            name: params[:name],
            alter_ego: params[:alter_ego],
            description: params[:description],
            powers: params[:powers]
        )
        if character.id
            character.to_json
        else
            {error: comic.errors.full_messages.to_sentence}.to_json
        end
    end

    delete "/characters/:id" do
        character = Character.find_by(id: params[:id])
        if character
            character.destroy
            character.to_json
        else
            {error: "Character does not exist"}.to_json
        end
    end

end