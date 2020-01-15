class Api::V1::StoriesController < ApplicationController
    def index
        @stories = Story.all 
        render json: @stories, include: :characters, status: 200
    end

    def show
        @story = Story.find(params[:id])
        render json: @story, status: 200
    end

    def create
        @story = Story.create(story_params)
        render json: @story, status: 200
    end

    def destroy
        @story = Story.find_by(id: params[:id])
        @story.delete

        render json: {id: @story.id}, status: 200
        
    end

    private 

    def story_params
        params.require(:story).permit(:title, :plot)
    end

end
