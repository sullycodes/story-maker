class Api::V1::CharactersController < ApplicationController

    def index
        @characters = Character.all 
        render json: @characters, status: 200
    end

    def show
        @character = Character.find(params[:id])
        render json: @character, status: 200
    end

    def new
        @character = Character.new(character_params)
        render json: @character, status: 200
    end

    def create
        @character = Character.create(character_params)
        render json: @character, status: 200
    end
   
    # def edit
    #     @character = Character.find(params[:id])
    #     render json: @character, status: 200
    # end

    # def update
    #     @character = Character.find_by(id: params[:id])
    #     @character = Character.update(character_params)
    #     render json: @character, status: 200
    # end

    def destroy
        @character = Character.find_by(id: params[:id])
        @character.delete
        render json: {id: @character.id}
    end

    private 

    def character_params
        params.require(:character).permit(:gender, :first_name, :last_name, :age, :image, :story_id)
    end

    #end

end
