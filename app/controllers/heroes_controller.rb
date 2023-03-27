class HeroesController < ApplicationController
    def index
        heroes = Hero.all
        render json: heroes, each_serializer: HeroesSerializer
    end

    def show
        hero = Hero.find(params[:id])
        if hero
            render json: hero, serializer: HeroSerializer
        else
            render json: { error: "Hero not found" }, status: :not_found
        end
    end
end
