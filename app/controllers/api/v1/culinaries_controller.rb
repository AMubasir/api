module Api
  module V1
    class CulinariesController < ApplicationController
    
      def index
        culinaries = Culinary.all
        render json: {status: "Success", message: "Loaded Culinaries", data: culinaries}, status: :ok
      end

      def show
        culinary = Culinary.find(params[:id])
        render json: {status: "Success", message: "Loaded Culinaries", data: culinary}, status: :ok
      end

      def create
        culinary = Culinary.new

        if culinary.save
          render json: {status: "Success", message: "culinary Successfully Created", data: culinary}, status: :ok
        else
          render json: {status: "Error", message: "culinary Can't Be Saved", data: culinary.errors}, status: :unprocessable_entity
        end
      end

      def update
        culinary = Culinary.find(params[:id])

        if culinary.update_attributes(culinary_params)
          render json: {status: "Success", message: "culinary Successfully Updated", data: culinary}, status: :ok
        else
          render json: {status: "Error", message: "culinary Can't Be Saved", data: culinary.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        culinary = Culinary.find(params[:id])
        culinary.destroy
        render json: {status: "Success", message: "Deleted ", data: culinary}, status: :ok
      end

    end
  end
end