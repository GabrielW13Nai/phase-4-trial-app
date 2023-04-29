class ConfectionariesController < ApplicationController
    def index
        confectionaries = Confectionary.all
        render json: confectionaries, only: [:id, :name, :brand], status: :ok
    end
end
