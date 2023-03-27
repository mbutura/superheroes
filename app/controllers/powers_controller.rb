class PowersController < ApplicationController
    rescue_from(ActiveRecord::RecordNotFound, with: :render_not_found_response)
    rescue_from(ActiveRecord::RecordInvalid, with: :render_unprocessable_entity)
    wrap_parameters(format: [])
    
    def index
        powers = Power.all
        render json: powers, each_serializer: PowerSerializer
    end

    def show
        power = find_power(params)
        render json: power, serializer: PowerSerializer
    end

    def update
        power = find_power(params)
        power.update!(permit_params(params))
        render json: power, serializer: PowerSerializer
    end

    private

    def find_power(params)
        Power.find(params[:id])
    end

    def permit_params(params)
        params.permit(:id, :name, :description)
    end

    def render_not_found_response
        render json: { error: "Power not found" }, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render(json: { errors: ["validation errors"] }, status: :unprocessable_entity)
    end
end