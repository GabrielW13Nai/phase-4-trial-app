class ConfectionariesController < ApplicationController
    wrap_parameters format: []
    def index
        render json: Confectionary.all, only: [:id, :name, :brand], status: :ok
    end
    def show
        confectionary = Confectionary.find_by(id:params[:id])
        if confectionary
            render json: confectionary
        else
            render json: { error: "Confectionary not found" }, status: :not_found
        end
    end
    # def update
    #     confectionary = Confectionary.update(id:params[:id], brand: params[:brand])
    #     if confectionary
    #         render json: confectionary
    #     else
    #         render json: { error: "Unable to update" }, status: :bad_request
    #     end
    # end

    def create
       confectionary = Confectionary.create(wrapped_params)
       render json: confectionary, status: :created
    end

    private

    def wrapped_params
        params.permit(:name, :brand, :shop_id)
    end

end
