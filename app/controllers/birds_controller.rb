class BirdsController < ApplicationController
# GET / birds
     def index
        birds = Bird.all
        render json:birds
     end
     
     #Get /birds/Id
     def show
        bird = Bird.find_by(id: params[:id])
        if bird
        render json: bird
        else
        render json: {error: 'not found'}, status: :not_found
        end
     end
end
