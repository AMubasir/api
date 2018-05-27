module Api
  module V1
    
    class LocationsController < ApplicationController
      def index
        locations = Location.all
        render json: locations
      end

      def show
        location = Location.find(params[:id])
        render json: location
      end

      def create
        location = Location.new(location_params)

        if location.save
          render json: {status: "Success", message: "location Successfully Created", data: location}, status: :ok
        else
          render json: {status: "Error", message: "location Can't Be Saved", data: location.errors}, status: :unprocessable_entity
        end
      end

      def update
        location = Location.find(params[:id])

        if location.update_attributes(location_params)
          render json: {status: "Success", message: "location Successfully Updated", data: location}, status: :ok
        else
          render json: {status: "Error", message: "location Can't Be Saved", data: location.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        location = Location.find(params[:id])
        location.destroy
        render json: {status: "Success", message: "Deleted ", data: location}, status: :ok
      end

      private
      def location_params
        params.require(:location).permit(:address, :latitude, :longitude)
      end

    end
  end
end