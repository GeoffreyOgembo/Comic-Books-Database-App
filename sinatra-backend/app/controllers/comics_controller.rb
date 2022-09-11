class ComicsController < ApplicationController

    get "/comics" do
        comics = Comic.all
        comics.to_json
    end

    get "/comics/:id" do
        comic = Comic.find_by(id: params[:id])
        if comic
            comic.to_json
        else
            {error: "Comic does not exist"}.to_json
        end
    end

    post "/comics" do
        comic = Comic.create(
            title: params[:title],
            publisher: params[:publisher],
            issues: params[:issues],
            release_date: params[:release_date],
            synopsis: params[:synopsis],
            writer: params[:writer],
            artist: params[:artist],
            character_id: params[:character_id]
        )
        if comic.id
            comic.to_json
        else
            {error: comic.errors.full_messages.to_sentence}.to_json
        end
    end

    delete "/comics/:id" do
        comic = Comic.find_by(id: params[:id])
        if comic
            comic.destroy
            comic.to_json
        else
            {error: "Comic does not exist"}.to_json
        end
    end




end