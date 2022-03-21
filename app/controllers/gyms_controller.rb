class GymsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def show
        gym = Gym.find(params[:id])
        render json: gym
    end

    def destroy
        gym = Gym.find(params[:id])
        gym.destroy
        head :no_content
        #status :not_found
    end

    private

    def render_not_found
        render json: { error: "Gym not found"}
    end
end
