class ClientsController < ApplicationController

    def show
        client = Client.find(params[:id])
        byebug
        render json: client, methods: [:total_memberships_price, :memberships], except: [:created_at, :updated_at]
    end
end
