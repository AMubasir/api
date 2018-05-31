module Api
  module V1
    class CraftsController < ApplicationController
    
      def index
        crafts = Craft.all
        render json: crafts
      end

      def show
        craft = Craft.find(params[:id])
        render json: craft
      end

      def create
        craft = Craft.new(craft_params)

        if craft.save
          render json: {status: "Success", message: "craft Successfully Created", data: craft}, status: :ok
        else
          render json: {status: "Error", message: "craft Can't Be Saved", data: craft.errors}, status: :unprocessable_entity
        end
      end

      def update
        craft = Craft.find(params[:id])

        if craft.update_attributes(craft_params)
          render json: {status: "Success", message: "craft Successfully Updated", data: craft}, status: :ok
        else
          render json: {status: "Error", message: "craft Can't Be Saved", data: craft.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        craft = Craft.find(params[:id])
        craft.destroy
        render json: {status: "Success", message: "Deleted ", data: craft}, status: :ok
      end

      private
        def craft_params
          params.require(:craft).permit(:name, :description, :address, :latitude, :longitude)
        end

    end
  end
end