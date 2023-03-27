class HeroPowersController < ApplicationController
    rescue_from(ActiveRecord::RecordInvalid, with: :render_unprocessable_entity)
    wrap_parameters(format: [])

    def create
        hero_power = HeroPower.create!(permit_params(params))
        render json: hero_power.hero, status: :created, serializer: HeroesSerializer
    end

    private

    def permit_params(params)
        params.permit(:id, :strength, :hero_id, :power_id)
    end

    def render_unprocessable_entity(invalid)
        render(json: { errors: ["validation errors"] }, status: :unprocessable_entity)
    end
end